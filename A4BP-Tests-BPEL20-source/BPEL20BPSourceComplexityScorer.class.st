Class {
	#name : #BPEL20BPSourceComplexityScorer,
	#superclass : #BPEL20BPSourceTest,
	#category : #'A4BP-Tests-BPEL20-source'
}

{ #category : #bpel }
BPEL20BPSourceComplexityScorer >> bpel_DisputeEvent [
^ '
<process name="DisputeEvent">
  <sequence name="main">
    <receive name="CustSubmit" partnerLink="client"
             portType="ns1:DisputeCustomerChannel" operation="submit"
             variable="request" createInstance="yes"/>
    <assign name="SetOpsSubmit">
      <copy>
        <from expression="string(''ReviewCapture'')"/>
        <to variable="request" part="dispute" query="/ns1:Dispute/ns1:action"/>
      </copy>
    </assign>
    <invoke name="OpsSubmit" partnerLink="Ops"
            portType="ns1:DisputeOperationsChannel" operation="pickup"
            inputVariable="request"/>
    <while name="While" condition="bpws:getVariableData(''moreEvents'')=true()">
      <pick name="Pick">
        <onMessage portType="ns1:DisputeCustomerChannel" operation="cancel"
                   variable="request" partnerLink="client">
          <switch name="Switch">
            <case condition="contains(bpws:getVariableData(''nextEvents''), ''cancel'')">
              <sequence name="Sequence">
                <assign name="SetAction">
                  <copy>
                    <from expression="string(''Cancelled'')"/>
                    <to variable="request" part="dispute"
                        query="/ns1:Dispute/ns1:action"/>
                  </copy>
                </assign>
                <invoke name="notifyCust" partnerLink="client"
                        portType="ns1:DisputeCustomerCallback"
                        operation="completed" inputVariable="request"/>
                <invoke name="notifyOps" partnerLink="Ops"
                        portType="ns1:DisputeOperationsChannel"
                        operation="cancel" inputVariable="request"/>
                <assign name="SetDone">
                  <copy>
                    <from expression="false()"/>
                    <to variable="moreEvents"/>
                  </copy>
                </assign>
              </sequence>
            </case>
          </switch>
        </onMessage>
        <onMessage portType="ns1:DisputeCustomerChannel" operation="update"
                   variable="request" partnerLink="client">
          <switch name="Switch">
            <case condition="contains(bpws:getVariableData(''nextEvents''), ''update'')">
              <sequence name="Sequence">
                <switch name="Switch">
                  <case condition="bpws:getVariableData(''isCaptured'')=true()">
                    <sequence name="Sequence">
                      <assign name="SetAction">
                        <copy>
                          <from expression="string(''ReviewCustOnDraft'')"/>
                          <to variable="request" part="dispute"
                              query="/ns1:Dispute/ns1:action"/>
                        </copy>
                      </assign>
                      <assign name="SetNext">
                        <copy>
                          <from expression="''rejected chargedBack''"/>
                          <to variable="nextEvents"/>
                        </copy>
                      </assign>
                    </sequence>
                  </case>
                  <otherwise>
                    <sequence name="Sequence">
                      <assign name="SetAction">
                        <copy>
                          <from expression="string(''ReviewCapture'')"/>
                          <to variable="request" part="dispute"
                              query="/ns1:Dispute/ns1:action"/>
                        </copy>
                      </assign>
                      <assign name="SetNext">
                        <copy>
                          <from expression="''rejected writtenOff requestedDocs captured cancel''"/>
                          <to variable="nextEvents"/>
                        </copy>
                      </assign>
                    </sequence>
                  </otherwise>
                </switch>
                <invoke name="ops" partnerLink="Ops"
                        portType="ns1:DisputeOperationsChannel"
                        operation="pickup" inputVariable="request"/>
              </sequence>
            </case>
          </switch>
        </onMessage>
        <onMessage portType="ns1:DisputeCustomerChannel" operation="simTimeout"
                   variable="request" partnerLink="client">
          <switch name="Switch">
            <case condition="contains(bpws:getVariableData(''nextEvents''), ''simTimeoutCust'')">
              <switch name="Switch">
                <case condition="bpws:getVariableData(''isCaptured'')=true()">
                  <sequence name="Sequence">
                    <assign name="SetAction">
                      <copy>
                        <from expression="string(''OpsContactingCust'')"/>
                        <to variable="request" part="dispute"
                            query="/ns1:Dispute/ns1:action"/>
                      </copy>
                    </assign>
                    <assign name="SetNext">
                      <copy>
                        <from expression="''rejected chargedBack''"/>
                        <to variable="nextEvents"/>
                      </copy>
                    </assign>
                    <invoke name="ops" partnerLink="Ops"
                            portType="ns1:DisputeOperationsChannel"
                            operation="pickup" inputVariable="request"/>
                  </sequence>
                </case>
                <otherwise>
                  <sequence name="Sequence">
                    <assign name="SetAction">
                      <copy>
                        <from expression="string(''Rejected'')"/>
                        <to variable="request" part="dispute"
                            query="/ns1:Dispute/ns1:action"/>
                      </copy>
                    </assign>
                    <assign name="setDone">
                      <copy>
                        <from expression="false()"/>
                        <to variable="moreEvents"/>
                      </copy>
                    </assign>
                    <invoke name="notifyCust" partnerLink="client"
                            portType="ns1:DisputeCustomerCallback"
                            operation="completed" inputVariable="request"/>
                  </sequence>
                </otherwise>
              </switch>
            </case>
          </switch>
        </onMessage>
        <onMessage portType="ns1:DisputeOperationsCallback" operation="rejected"
                   variable="request" partnerLink="Ops">
          <switch name="Switch">
            <case condition="contains(bpws:getVariableData(''nextEvents''), ''rejected'')">
              <sequence name="Sequence">
                <assign name="SetAction">
                  <copy>
                    <from expression="string(''Rejected'')"/>
                    <to variable="request" part="dispute"
                        query="/ns1:Dispute/ns1:action"/>
                  </copy>
                </assign>
                <invoke name="notifyCust" partnerLink="client"
                        portType="ns1:DisputeCustomerCallback"
                        operation="completed" inputVariable="request"/>
                <assign name="SetDone">
                  <copy>
                    <from expression="false()"/>
                    <to variable="moreEvents"/>
                  </copy>
                </assign>
              </sequence>
            </case>
          </switch>
        </onMessage>
        <onMessage portType="ns1:DisputeOperationsCallback"
                   operation="writtenOff" variable="request" partnerLink="Ops">
          <switch name="Switch">
            <case condition="contains(bpws:getVariableData(''nextEvents''), ''writtenOff'')">
              <sequence name="Sequence">
                <switch name="Switch">
                  <case condition="bpws:getVariableData(''arbRequested'')=true()">
                    <invoke name="RejectArb" partnerLink="Net"
                            portType="ns1:DisputeChannel"
                            operation="rejectArbitration"
                            inputVariable="request"/>
                  </case>
                </switch>
                <assign name="SetAction">
                  <copy>
                    <from expression="string(''WrittenOff'')"/>
                    <to variable="request" part="dispute"
                        query="/ns1:Dispute/ns1:action"/>
                  </copy>
                </assign>
                <assign name="SetDone">
                  <copy>
                    <from expression="false()"/>
                    <to variable="moreEvents"/>
                  </copy>
                </assign>
                <invoke name="notifyCust" partnerLink="client"
                        portType="ns1:DisputeCustomerCallback"
                        operation="completed" inputVariable="request"/>
              </sequence>
            </case>
          </switch>
        </onMessage>
        <onMessage portType="ns1:DisputeOperationsCallback" operation="captured"
                   variable="request" partnerLink="Ops">
          <switch name="Switch">
            <case condition="contains(bpws:getVariableData(''nextEvents''), ''captured'')">
              <sequence name="Sequence">
                <assign name="SetAction">
                  <copy>
                    <from expression="string(''Captured'')"/>
                    <to variable="request" part="dispute"
                        query="/ns1:Dispute/ns1:action"/>
                  </copy>
                </assign>
                <invoke name="ops" partnerLink="Ops"
                        portType="ns1:DisputeOperationsChannel"
                        operation="pickup" inputVariable="request"/>
                <assign name="SetNext">
                  <copy>
                    <from expression="''rejected writtenOff chargedBack requestedDocs''"/>
                    <to variable="nextEvents"/>
                  </copy>
                </assign>
                <assign name="SetCaptured">
                  <copy>
                    <from expression="true()"/>
                    <to variable="isCaptured"/>
                  </copy>
                </assign>
              </sequence>
            </case>
          </switch>
        </onMessage>
        <onMessage portType="ns1:DisputeOperationsCallback"
                   operation="requestedDocs" variable="request"
                   partnerLink="Ops">
          <switch name="Switch">
            <case condition="contains(bpws:getVariableData(''nextEvents''), ''requestedDocs'')">
              <sequence name="Sequence">
                <switch name="Switch">
                  <case condition="bpws:getVariableData(''gotDraft'')=true()">
                    <sequence>
                      <invoke name="notifyCust" partnerLink="client"
                              portType="ns1:DisputeCustomerCallback"
                              operation="updateRequired" inputVariable="request"/>
                      <assign name="setNext">
                        <copy>
                          <from expression="''update simTimeoutCust''"/>
                          <to variable="nextEvents"/>
                        </copy>
                      </assign>
                    </sequence>
                  </case>
                  <case condition="bpws:getVariableData(''isCaptured'')=true()">
                    <sequence name="Sequence">
                      <invoke name="netDraft" partnerLink="Net"
                              portType="ns1:DisputeChannel"
                              operation="requestDraft" inputVariable="request"/>
                      <assign name="setNext">
                        <copy>
                          <from expression="''draft simTimeoutNet''"/>
                          <to variable="nextEvents"/>
                        </copy>
                      </assign>
                    </sequence>
                  </case>
                  <otherwise>
                    <sequence>
                      <invoke name="notifyCust" partnerLink="client"
                              portType="ns1:DisputeCustomerCallback"
                              operation="updateRequired" inputVariable="request"/>
                      <assign name="setNext">
                        <copy>
                          <from expression="''cancel update simTimeoutCust''"/>
                          <to variable="nextEvents"/>
                        </copy>
                      </assign>
                    </sequence>
                  </otherwise>
                </switch>
              </sequence>
            </case>
          </switch>
        </onMessage>
        <onMessage portType="ns1:DisputeOperationsCallback"
                   operation="chargedBack" variable="request" partnerLink="Ops">
          <switch name="Switch">
            <case condition="contains(bpws:getVariableData(''nextEvents''), ''chargedBack'')">
              <sequence name="Sequence">
                <switch name="Switch">
                  <case condition="bpws:getVariableData(''isRepresented'')=true()">
                    <assign name="setNext">
                      <copy>
                        <from expression="''credited arbitrationRequested simTimeoutNet''"/>
                        <to variable="nextEvents"/>
                      </copy>
                    </assign>
                  </case>
                  <otherwise>
                    <sequence name="Sequence">
                      <invoke name="Credit" partnerLink="client"
                              portType="ns1:DisputeCustomerCallback"
                              operation="credited" inputVariable="request"/>
                      <assign name="setNext">
                        <copy>
                          <from expression="''credited represented simTimeoutNet''"/>
                          <to variable="nextEvents"/>
                        </copy>
                      </assign>
                    </sequence>
                  </otherwise>
                </switch>
                <invoke name="NetCB" partnerLink="Net"
                        portType="ns1:DisputeChannel" operation="chargeback"
                        inputVariable="request"/>
                <assign name="SetCB">
                  <copy>
                    <from expression="true()"/>
                    <to variable="isChargedBack"/>
                  </copy>
                </assign>
              </sequence>
            </case>
          </switch>
        </onMessage>
        <onMessage portType="ns1:DisputeOperationsCallback"
                   operation="acceptedArbitration" variable="request"
                   partnerLink="Ops">
          <switch name="Switch">
            <case condition="contains(bpws:getVariableData(''nextEvents''), ''acceptedArbitration'')">
              <sequence name="Sequence">
                <assign name="setNext">
                  <copy>
                    <from expression="''rulingWon rulingLost''"/>
                    <to variable="nextEvents"/>
                  </copy>
                </assign>
                <invoke name="NetArbAccept" partnerLink="Net"
                        portType="ns1:DisputeChannel"
                        operation="acceptArbitration" inputVariable="request"/>
              </sequence>
            </case>
          </switch>
        </onMessage>
        <onMessage portType="ns1:DisputeCallback" operation="draft"
                   variable="request" partnerLink="Net">
          <switch name="Switch">
            <case condition="contains(bpws:getVariableData(''nextEvents''), ''draft'')">
              <sequence name="Sequence">
                <assign name="SetAction">
                  <copy>
                    <from expression="string(''ExaminingDraft'')"/>
                    <to variable="request" part="dispute"
                        query="/ns1:Dispute/ns1:action"/>
                  </copy>
                </assign>
                <invoke name="ops" partnerLink="Ops"
                        portType="ns1:DisputeOperationsChannel"
                        operation="pickup" inputVariable="request"/>
                <assign name="setNext">
                  <copy>
                    <from expression="''rejected chargedBack requestedDocs''"/>
                    <to variable="nextEvents"/>
                  </copy>
                </assign>
                <assign name="SetGotDraft">
                  <copy>
                    <from expression="true()"/>
                    <to variable="gotDraft"/>
                  </copy>
                </assign>
              </sequence>
            </case>
          </switch>
        </onMessage>
        <onMessage portType="ns1:DisputeCallback" operation="represented"
                   variable="request" partnerLink="Net">
          <switch name="Switch">
            <case condition="contains(bpws:getVariableData(''nextEvents''), ''represented'')">
              <sequence name="Sequence">
                <assign name="SetAction">
                  <copy>
                    <from expression="string(''Represented'')"/>
                    <to variable="request" part="dispute"
                        query="/ns1:Dispute/ns1:action"/>
                  </copy>
                </assign>
                <invoke name="ops" partnerLink="Ops"
                        portType="ns1:DisputeOperationsChannel"
                        operation="pickup" inputVariable="request"/>
                <assign name="setNext">
                  <copy>
                    <from expression="''rejected chargedBack writtenOff''"/>
                    <to variable="nextEvents"/>
                  </copy>
                </assign>
                <assign name="setRepresentd">
                  <copy>
                    <from expression="true()''"/>
                    <to variable="isRepresented"/>
                  </copy>
                </assign>
              </sequence>
            </case>
          </switch>
        </onMessage>
        <onMessage portType="ns1:DisputeCallback" operation="credited"
                   variable="request" partnerLink="Net">
          <switch name="Switch">
            <case condition="contains(bpws:getVariableData(''nextEvents''), ''credited'')">
              <sequence name="Sequence">
                <assign name="SetAction">
                  <copy>
                    <from expression="string(''Won'')"/>
                    <to variable="request" part="dispute"
                        query="/ns1:Dispute/ns1:action"/>
                  </copy>
                </assign>
                <invoke name="notifyCust" partnerLink="client"
                        portType="ns1:DisputeCustomerCallback"
                        operation="completed" inputVariable="request"/>
                <assign name="setDone">
                  <copy>
                    <from expression="false()"/>
                    <to variable="moreEvents"/>
                  </copy>
                </assign>
              </sequence>
            </case>
          </switch>
        </onMessage>
        <onMessage portType="ns1:DisputeCallback"
                   operation="arbitrationRequested" variable="request"
                   partnerLink="Net">
          <switch name="Switch">
            <case condition="contains(bpws:getVariableData(''nextEvents''), ''arbitrationRequested'')">
              <sequence name="Sequence">
                <assign name="SetAction">
                  <copy>
                    <from expression="string(''Arbitration'')"/>
                    <to variable="request" part="dispute"
                        query="/ns1:Dispute/ns1:action"/>
                  </copy>
                </assign>
                <invoke name="ops" partnerLink="Ops"
                        portType="ns1:DisputeOperationsChannel"
                        operation="pickup" inputVariable="request"/>
                <assign name="setNext">
                  <copy>
                    <from expression="''acceptedArbitration writtenOff''"/>
                    <to variable="nextEvents"/>
                  </copy>
                </assign>
                <assign name="SetArbReq">
                  <copy>
                    <from expression="true()''"/>
                    <to variable="arbRequested"/>
                  </copy>
                </assign>
              </sequence>
            </case>
          </switch>
        </onMessage>
        <onMessage portType="ns1:DisputeCallback" operation="rulingWon"
                   variable="request" partnerLink="Net">
          <switch name="Switch">
            <case condition="contains(bpws:getVariableData(''nextEvents''), ''rulingWon'')">
              <sequence name="Sequence">
                <assign name="SetAction">
                  <copy>
                    <from expression="string(''Won'')"/>
                    <to variable="request" part="dispute"
                        query="/ns1:Dispute/ns1:action"/>
                  </copy>
                </assign>
                <invoke name="notifyCust" partnerLink="client"
                        portType="ns1:DisputeCustomerCallback"
                        operation="completed" inputVariable="request"/>
                <assign name="setDone">
                  <copy>
                    <from expression="false()"/>
                    <to variable="moreEvents"/>
                  </copy>
                </assign>
              </sequence>
            </case>
          </switch>
        </onMessage>
        <onMessage portType="ns1:DisputeCallback" operation="rulingLost"
                   variable="request" partnerLink="Net">
          <switch name="Switch">
            <case condition="contains(bpws:getVariableData(''nextEvents''), ''rulingLost'')">
              <sequence name="Sequence">
                <assign name="SetAction">
                  <copy>
                    <from expression="string(''Lost'')"/>
                    <to variable="request" part="dispute"
                        query="/ns1:Dispute/ns1:action"/>
                  </copy>
                </assign>
                <invoke name="notifyCust" partnerLink="client"
                        portType="ns1:DisputeCustomerCallback"
                        operation="completed" inputVariable="request"/>
                <assign name="setDone">
                  <copy>
                    <from expression="false()"/>
                    <to variable="moreEvents"/>
                  </copy>
                </assign>
              </sequence>
            </case>
          </switch>
        </onMessage>
        <onMessage portType="ns1:DisputeCallback" operation="simTimeout"
                   variable="request" partnerLink="Net">
          <switch name="Switch">
            <case condition="contains(bpws:getVariableData(''nextEvents''), ''simTimeoutNet'')">
              <switch name="Switch">
                <case condition="bpws:getVariableData(''isChargedBack'')=true()">
                  <sequence name="Sequence">
                    <invoke name="opsClose" partnerLink="Ops"
                            portType="ns1:DisputeOperationsChannel"
                            operation="close" inputVariable="request"/>
                    <assign name="setAction">
                      <copy>
                        <from expression="string(''Won'')"/>
                        <to variable="request" part="dispute"
                            query="/ns1:Dispute/ns1:action"/>
                      </copy>
                    </assign>
                    <invoke name="custComplete" partnerLink="client"
                            portType="ns1:DisputeCustomerCallback"
                            operation="completed" inputVariable="request"/>
                    <assign name="setDone">
                      <copy>
                        <from expression="false()"/>
                        <to variable="moreEvents"/>
                      </copy>
                    </assign>
                  </sequence>
                </case>
                <otherwise>
                  <sequence name="Sequence">
                    <assign name="setAction">
                      <copy>
                        <from expression="string(''OpsContactingMerchant'')"/>
                        <to variable="request" part="dispute"
                            query="/ns1:Dispute/ns1:action"/>
                      </copy>
                    </assign>
                    <invoke name="Ops" partnerLink="Ops"
                            portType="ns1:DisputeOperationsChannel"
                            operation="pickup" inputVariable="request"/>
                    <assign name="setNext">
                      <copy>
                        <from expression="string(''rejected chargedBack requestedDocs'')"/>
                        <to variable="nextEvents"/>
                      </copy>
                    </assign>
                    <assign name="SetGotDraft">
                      <copy>
                        <from expression="true()"/>
                        <to variable="gotDraft"/>
                      </copy>
                    </assign>
                  </sequence>
                </otherwise>
              </switch>
            </case>
          </switch>
        </onMessage>
      </pick>
    </while>
  </sequence>
</process>
'
]

{ #category : #bpel }
BPEL20BPSourceComplexityScorer >> bpel_DisputeFlow [
	^ '<process name="DisputeFlow">
  <partnerLinks>
    <partnerLink name="client" partnerLinkType="ns1:DisputeCust"
                 myRole="Cust2Process" partnerRole="Process2Cust"/>
    <partnerLink myRole="Ops2Process" name="Ops" partnerRole="Process2Ops"
                 partnerLinkType="ns1:DisputeOps"/>
    <partnerLink myRole="Net2Process" name="Net" partnerRole="Process2Net"
                 partnerLinkType="ns1:DisputeNet"/>
  </partnerLinks>
  <variables>
    <variable name="route" type="xsd:string"/>
    <variable name="keepGoing" type="xsd:boolean"/>
    <variable name="request" messageType="ns1:DisputeMessage"/>
  </variables>
  <sequence name="main">
    <receive name="submitDispute" partnerLink="client"
             portType="ns1:DisputeCustomerChannel" operation="submit"
             variable="request" createInstance="yes"/>
    <scope name="ScopeInit">
      <sequence name="Sequence">
        <invoke name="InitOps" partnerLink="Ops"
                portType="ns1:DisputeOperationsChannel" operation="startup"
                inputVariable="request"/>
        <invoke name="InitNet" partnerLink="Net" portType="ns1:DisputeChannel"
                operation="startup" inputVariable="request"/>
        <assign name="InitVars">
          <copy>
            <from expression="string(''ReviewCapture'')"/>
            <to variable="route"/>
          </copy>
          <copy>
            <from expression="true()"/>
            <to variable="keepGoing"/>
          </copy>
        </assign>
      </sequence>
    </scope>
    <while name="While" condition="bpws:getVariableData(''keepGoing'')=true()">
      <switch name="Switch">
        <case condition="bpws:getVariableData(''route'')=''Rejected''">
          <sequence name="Sequence">
            <assign name="SetAction">
              <copy>
                <from expression="string(''Rejected'')"/>
                <to variable="request" part="dispute"
                    query="/ns1:Dispute/ns1:action"/>
              </copy>
            </assign>
            <assign name="RouteCompleted">
              <copy>
                <from expression="string(''Completed'')"/>
                <to variable="route"/>
              </copy>
            </assign>
          </sequence>
        </case>
        <case condition="bpws:getVariableData(''route'')=''WrittenOff''">
          <sequence name="Sequence">
            <assign name="SetAction">
              <copy>
                <from expression="string(''WrittenOff'')"/>
                <to variable="request" part="dispute"
                    query="/ns1:Dispute/ns1:action"/>
              </copy>
            </assign>
            <assign name="RouteCompleted">
              <copy>
                <from expression="string(''Completed'')"/>
                <to variable="route"/>
              </copy>
            </assign>
          </sequence>
        </case>
        <case condition="bpws:getVariableData(''route'')=''Cancelled''">
          <sequence name="Sequence">
            <assign name="SetAction">
              <copy>
                <from expression="string(''Cancelled'')"/>
                <to variable="request" part="dispute"
                    query="/ns1:Dispute/ns1:action"/>
              </copy>
            </assign>
            <invoke name="OpsCancel" partnerLink="Ops"
                    portType="ns1:DisputeOperationsChannel" operation="cancel"
                    inputVariable="request"/>
            <assign name="RouteCompleted">
              <copy>
                <from expression="string(''Completed'')"/>
                <to variable="route"/>
              </copy>
            </assign>
          </sequence>
        </case>
        <case condition="bpws:getVariableData(''route'')=''Completed''">
          <sequence>
            <invoke name="CustCompleted" partnerLink="client"
                    portType="ns1:DisputeCustomerCallback" operation="completed"
                    inputVariable="request"/>
            <assign name="SetDone">
              <copy>
                <from expression="false()"/>
                <to variable="keepGoing"/>
              </copy>
            </assign>
          </sequence>
        </case>
        <case condition="bpws:getVariableData(''route'')=''ReviewCapture''">
          <sequence name="Sequence">
            <assign name="SetAction">
              <copy>
                <from expression="string(''ReviewCapture'')"/>
                <to variable="request" part="dispute"
                    query="/ns1:Dispute/ns1:action"/>
              </copy>
            </assign>
            <invoke name="Ops" partnerLink="Ops"
                    portType="ns1:DisputeOperationsChannel" operation="pickup"
                    inputVariable="request"/>
            <pick name="Pick">
              <onMessage portType="ns1:DisputeOperationsCallback"
                         operation="rejected" variable="request"
                         partnerLink="Ops">
                <assign name="RouteRejected">
                  <copy>
                    <from expression="string(''Rejected'')"/>
                    <to variable="route"/>
                  </copy>
                </assign>
              </onMessage>
              <onMessage portType="ns1:DisputeOperationsCallback"
                         operation="writtenOff" variable="request"
                         partnerLink="Ops">
                <assign name="RouteWrittenOff">
                  <copy>
                    <from expression="string(''WrittenOff'')"/>
                    <to variable="route"/>
                  </copy>
                </assign>
              </onMessage>
              <onMessage portType="ns1:DisputeOperationsCallback"
                         operation="captured" variable="request"
                         partnerLink="Ops">
                <assign name="RouteCaptured">
                  <copy>
                    <from expression="string(''Captured'')"/>
                    <to variable="route"/>
                  </copy>
                </assign>
              </onMessage>
              <onMessage portType="ns1:DisputeOperationsCallback"
                         operation="requestedDocs" variable="request"
                         partnerLink="Ops">
                <sequence name="Sequence">
                  <invoke name="CustUpdate" partnerLink="client"
                          portType="ns1:DisputeCustomerCallback"
                          operation="updateRequired" inputVariable="request"/>
                  <pick name="Pick">
                    <onMessage portType="ns1:DisputeCustomerChannel"
                               operation="update" variable="request"
                               partnerLink="client">
                      <assign name="RouteReviewCapture">
                        <copy>
                          <from expression="string(''ReviewCapture'')"/>
                          <to variable="route"/>
                        </copy>
                      </assign>
                    </onMessage>
                    <onMessage portType="ns1:DisputeCustomerChannel"
                               operation="cancel" variable="request"
                               partnerLink="client">
                      <assign name="RouteCancel">
                        <copy>
                          <from expression="string(''Cancelled'')"/>
                          <to variable="route"/>
                        </copy>
                      </assign>
                    </onMessage>
                    <onMessage portType="ns1:DisputeCustomerChannel"
                               operation="simTimeout" variable="request"
                               partnerLink="client">
                      <sequence name="Sequence">
                        <invoke name="OpsClose" partnerLink="Ops"
                                portType="ns1:DisputeOperationsChannel"
                                operation="close" inputVariable="request"/>
                        <assign name="Rejected">
                          <copy>
                            <from expression="string(''Rejected'')"/>
                            <to variable="route"/>
                          </copy>
                        </assign>
                      </sequence>
                    </onMessage>
                  </pick>
                </sequence>
              </onMessage>
              <onMessage portType="ns1:DisputeCustomerChannel"
                         operation="cancel" variable="request"
                         partnerLink="client">
                <assign name="RouteCancel">
                  <copy>
                    <from expression="string(''Cancelled'')"/>
                    <to variable="route"/>
                  </copy>
                </assign>
              </onMessage>
            </pick>
          </sequence>
        </case>
        <case condition="bpws:getVariableData(''route'')=''Captured''">
          <sequence name="Sequence">
            <assign name="SetAction">
              <copy>
                <from expression="string(''Captured'')"/>
                <to variable="request" part="dispute"
                    query="/ns1:Dispute/ns1:action"/>
              </copy>
            </assign>
            <invoke name="Ops" partnerLink="Ops"
                    portType="ns1:DisputeOperationsChannel" operation="pickup"
                    inputVariable="request"/>
            <pick name="Pick">
              <onMessage portType="ns1:DisputeOperationsCallback"
                         operation="rejected" variable="request"
                         partnerLink="Ops">
                <assign name="RouteRejected">
                  <copy>
                    <from expression="string(''Rejected'')"/>
                    <to variable="route"/>
                  </copy>
                </assign>
              </onMessage>
              <onMessage portType="ns1:DisputeOperationsCallback"
                         operation="writtenOff" variable="request"
                         partnerLink="Ops">
                <assign name="RouteWrittenOff">
                  <copy>
                    <from expression="string(''WrittenOff'')"/>
                    <to variable="route"/>
                  </copy>
                </assign>
              </onMessage>
              <onMessage portType="ns1:DisputeOperationsCallback"
                         operation="requestedDocs" variable="request"
                         partnerLink="Ops">
                <sequence name="Sequence">
                  <invoke name="NetDraft" partnerLink="Net"
                          portType="ns1:DisputeChannel" operation="requestDraft"
                          inputVariable="request"/>
                  <pick name="Pick">
                    <onMessage portType="ns1:DisputeCallback" operation="draft"
                               variable="request" partnerLink="Net">
                      <sequence name="Sequence">
                        <assign name="SetAction">
                          <copy>
                            <from expression="string(''ExaminingDraft'')"/>
                            <to variable="request" part="dispute"
                                query="/ns1:Dispute/ns1:action"/>
                          </copy>
                        </assign>
                        <assign name="RouteDraft">
                          <copy>
                            <from expression="string(''Draft'')"/>
                            <to variable="route"/>
                          </copy>
                        </assign>
                      </sequence>
                    </onMessage>
                    <onMessage portType="ns1:DisputeCallback"
                               operation="simTimeout" variable="request"
                               partnerLink="Net">
                      <sequence name="Sequence">
                        <assign name="SetAction">
                          <copy>
                            <from expression="string(''OpsContactingMerchant'')"/>
                            <to variable="request" part="dispute"
                                query="/ns1:Dispute/ns1:action"/>
                          </copy>
                        </assign>
                        <assign name="RouteDraft">
                          <copy>
                            <from expression="string(''Draft'')"/>
                            <to variable="route"/>
                          </copy>
                        </assign>
                      </sequence>
                    </onMessage>
                  </pick>
                </sequence>
              </onMessage>
              <onMessage portType="ns1:DisputeOperationsCallback"
                         operation="chargedBack" variable="request"
                         partnerLink="Ops">
                <assign name="RouteChargedBack">
                  <copy>
                    <from expression="string(''ChargedBack'')"/>
                    <to variable="route"/>
                  </copy>
                </assign>
              </onMessage>
            </pick>
          </sequence>
        </case>
        <case condition="bpws:getVariableData(''route'')=''Draft''">
          <sequence name="Sequence">
            <invoke name="Ops" partnerLink="Ops"
                    portType="ns1:DisputeOperationsChannel" operation="pickup"
                    inputVariable="request"/>
            <pick name="Pick">
              <onMessage portType="ns1:DisputeOperationsCallback"
                         operation="rejected" variable="request"
                         partnerLink="Ops">
                <assign name="RouteRejected">
                  <copy>
                    <from expression="string(''Rejected'')"/>
                    <to variable="route"/>
                  </copy>
                </assign>
              </onMessage>
              <onMessage portType="ns1:DisputeOperationsCallback"
                         operation="chargedBack" variable="request"
                         partnerLink="Ops">
                <assign name="RouteChargedBack">
                  <copy>
                    <from expression="string(''ChargedBack'')"/>
                    <to variable="route"/>
                  </copy>
                </assign>
              </onMessage>
              <onMessage portType="ns1:DisputeOperationsCallback"
                         operation="requestedDocs" variable="request"
                         partnerLink="Ops">
                <sequence name="Sequence">
                  <invoke name="CustUpdate" partnerLink="client"
                          portType="ns1:DisputeCustomerCallback"
                          operation="updateRequired" inputVariable="request"/>
                  <pick name="Pick">
                    <onMessage portType="ns1:DisputeCustomerChannel"
                               operation="update" variable="request"
                               partnerLink="client">
                      <sequence name="Sequence">
                        <assign name="SetAction">
                          <copy>
                            <from expression="string(''ExaminingCustOnDraft'')"/>
                            <to variable="request" part="dispute"
                                query="/ns1:Dispute/ns1:action"/>
                          </copy>
                        </assign>
                        <assign name="RouteCustOnDraft">
                          <copy>
                            <from expression="string(''CustOnDraft'')"/>
                            <to variable="route"/>
                          </copy>
                        </assign>
                      </sequence>
                    </onMessage>
                    <onMessage portType="ns1:DisputeCustomerChannel"
                               operation="simTimeout" variable="request"
                               partnerLink="client">
                      <sequence name="Sequence">
                        <assign name="SetAction">
                          <copy>
                            <from expression="string(''OpsContactingCust'')"/>
                            <to variable="request" part="dispute"
                                query="/ns1:Dispute/ns1:action"/>
                          </copy>
                        </assign>
                        <assign name="RouteCustOnDraft">
                          <copy>
                            <from expression="string(''CustOnDraft'')"/>
                            <to variable="route"/>
                          </copy>
                        </assign>
                      </sequence>
                    </onMessage>
                  </pick>
                </sequence>
              </onMessage>
            </pick>
          </sequence>
        </case>
        <case condition="bpws:getVariableData(''route'')=''CustOnDraft''">
          <sequence name="Sequence">
            <invoke name="Ops" partnerLink="Ops"
                    portType="ns1:DisputeOperationsChannel" operation="pickup"
                    inputVariable="request"/>
            <pick name="Pick">
              <onMessage portType="ns1:DisputeOperationsCallback"
                         operation="rejected" variable="request"
                         partnerLink="Ops">
                <assign name="RouteRejected">
                  <copy>
                    <from expression="string(''Rejected'')"/>
                    <to variable="route"/>
                  </copy>
                </assign>
              </onMessage>
              <onMessage portType="ns1:DisputeOperationsCallback"
                         operation="chargedBack" variable="request"
                         partnerLink="Ops">
                <assign name="RouteChargedBack">
                  <copy>
                    <from expression="string(''ChargedBack'')"/>
                    <to variable="route"/>
                  </copy>
                </assign>
              </onMessage>
            </pick>
          </sequence>
        </case>
        <case condition="bpws:getVariableData(''route'')=''ChargedBack''">
          <sequence name="Sequence">
            <invoke name="CustCredit" partnerLink="client"
                    portType="ns1:DisputeCustomerCallback" operation="credited"
                    inputVariable="request"/>
            <invoke name="NetCB" partnerLink="Net" portType="ns1:DisputeChannel"
                    operation="chargeback" inputVariable="request"/>
            <pick name="Pick">
              <onMessage portType="ns1:DisputeCallback" operation="credited"
                         variable="request" partnerLink="Net">
                <assign name="RouteWon">
                  <copy>
                    <from expression="string(''Won'')"/>
                    <to variable="route"/>
                  </copy>
                </assign>
              </onMessage>
              <onMessage portType="ns1:DisputeCallback" operation="simTimeout"
                         variable="request" partnerLink="Net">
                <assign name="RouteTimeoutWon">
                  <copy>
                    <from expression="string(''TimeoutWon'')"/>
                    <to variable="route"/>
                  </copy>
                </assign>
              </onMessage>
              <onMessage portType="ns1:DisputeCallback" operation="represented"
                         variable="request" partnerLink="Net">
                <sequence name="Sequence">
                  <assign name="SetAction">
                    <copy>
                      <from expression="string(''Represented'')"/>
                      <to variable="request" part="dispute"
                          query="/ns1:Dispute/ns1:action"/>
                    </copy>
                  </assign>
                  <invoke name="Ops" partnerLink="Ops"
                          portType="ns1:DisputeOperationsChannel"
                          operation="pickup" inputVariable="request"/>
                  <pick name="Pick">
                    <onMessage portType="ns1:DisputeOperationsCallback"
                               operation="rejected" variable="request"
                               partnerLink="Ops">
                      <assign name="RouteRejected">
                        <copy>
                          <from expression="string(''Rejected'')"/>
                          <to variable="route"/>
                        </copy>
                      </assign>
                    </onMessage>
                    <onMessage portType="ns1:DisputeOperationsCallback"
                               operation="writtenOff" variable="request"
                               partnerLink="Ops">
                      <assign name="RouteWrittenOff">
                        <copy>
                          <from expression="string(''WrittenOff'')"/>
                          <to variable="route"/>
                        </copy>
                      </assign>
                    </onMessage>
                    <onMessage portType="ns1:DisputeOperationsCallback"
                               operation="chargedBack" variable="request"
                               partnerLink="Ops">
                      <assign name="RouteCB2">
                        <copy>
                          <from expression="string(''CB2'')"/>
                          <to variable="route"/>
                        </copy>
                      </assign>
                    </onMessage>
                  </pick>
                </sequence>
              </onMessage>
            </pick>
          </sequence>
        </case>
        <case condition="bpws:getVariableData(''route'')=''TimeoutWon'' or bpws:getVariableData(''route'')=''WonArb''">
          <sequence name="Sequence">
            <invoke name="OpsClose" partnerLink="Ops"
                    portType="ns1:DisputeOperationsChannel" operation="close"
                    inputVariable="request"/>
            <assign name="RouteWon">
              <copy>
                <from expression="string(''Won'')"/>
                <to variable="route"/>
              </copy>
            </assign>
          </sequence>
        </case>
        <case condition="bpws:getVariableData(''route'')=''Won''">
          <sequence name="Sequence">
            <assign name="SetAction">
              <copy>
                <from expression="string(''Won'')"/>
                <to variable="request" part="dispute"
                    query="/ns1:Dispute/ns1:action"/>
              </copy>
            </assign>
            <assign name="RouteCompleted">
              <copy>
                <from expression="string(''Completed'')"/>
                <to variable="route"/>
              </copy>
            </assign>
          </sequence>
        </case>
        <case condition="bpws:getVariableData(''route'')=''CB2''">
          <sequence name="Sequence">
            <invoke name="NetCB" partnerLink="Net" portType="ns1:DisputeChannel"
                    operation="chargeback" inputVariable="request"/>
            <pick name="Pick">
              <onMessage portType="ns1:DisputeCallback" operation="credited"
                         variable="request" partnerLink="Net">
                <assign name="RouteWon">
                  <copy>
                    <from expression="string(''Won'')"/>
                    <to variable="route"/>
                  </copy>
                </assign>
              </onMessage>
              <onMessage portType="ns1:DisputeCallback"
                         operation="arbitrationRequested" variable="request"
                         partnerLink="Net">
                <sequence name="Sequence">
                  <assign name="SetAction">
                    <copy>
                      <from expression="string(''Arbitration'')"/>
                      <to variable="request" part="dispute"
                          query="/ns1:Dispute/ns1:action"/>
                    </copy>
                  </assign>
                  <invoke name="Ops" partnerLink="Ops"
                          portType="ns1:DisputeOperationsChannel"
                          operation="pickup" inputVariable="request"/>
                  <pick name="Pick">
                    <onMessage portType="ns1:DisputeOperationsCallback"
                               operation="acceptedArbitration"
                               variable="request" partnerLink="Ops">
                      <sequence name="Sequence">
                        <invoke name="NetAccept" partnerLink="Net"
                                portType="ns1:DisputeChannel"
                                operation="acceptArbitration"
                                inputVariable="request"/>
                        <pick name="Pick">
                          <onMessage portType="ns1:DisputeCallback"
                                     operation="rulingWon" variable="request"
                                     partnerLink="Net">
                            <assign name="RouteWonArb">
                              <copy>
                                <from expression="string(''Won'')"/>
                                <to variable="route"/>
                              </copy>
                            </assign>
                          </onMessage>
                          <onMessage portType="ns1:DisputeCallback"
                                     operation="rulingLost" variable="request"
                                     partnerLink="Net">
                            <sequence name="Sequence">
                              <invoke name="OpsClose" partnerLink="Ops"
                                      portType="ns1:DisputeOperationsChannel"
                                      operation="close" inputVariable="request"/>
                              <assign name="SetAction">
                                <copy>
                                  <from expression="string(''Lost'')"/>
                                  <to variable="request" part="dispute"
                                      query="/ns1:Dispute/ns1:action"/>
                                </copy>
                              </assign>
                              <assign name="RouteCompleted">
                                <copy>
                                  <from expression="string(''Completed'')"/>
                                  <to variable="route"/>
                                </copy>
                              </assign>
                            </sequence>
                          </onMessage>
                        </pick>
                      </sequence>
                    </onMessage>
                    <onMessage portType="ns1:DisputeOperationsCallback"
                               operation="writtenOff" variable="request"
                               partnerLink="Ops">
                      <sequence name="Sequence">
                        <invoke name="NetReject" partnerLink="Net"
                                portType="ns1:DisputeChannel"
                                operation="rejectArbitration"
                                inputVariable="request"/>
                        <assign name="RouteWrittenOff">
                          <copy>
                            <from expression="string(''WrittenOff'')"/>
                            <to variable="route"/>
                          </copy>
                        </assign>
                      </sequence>
                    </onMessage>
                  </pick>
                </sequence>
              </onMessage>
              <onMessage portType="ns1:DisputeCallback" operation="simTimeout"
                         variable="request" partnerLink="Net">
                <assign name="RouteTimeoutWon">
                  <copy>
                    <from expression="string(''TimeoutWon'')"/>
                    <to variable="route"/>
                  </copy>
                </assign>
              </onMessage>
            </pick>
          </sequence>
        </case>
        <otherwise>
          <throw name="Throw" faultName="bpws:selectionFailure"/>
        </otherwise>
      </switch>
    </while>
    <scope name="ScopeCleanup">
      <sequence name="Sequence">
        <invoke name="CleanOps" partnerLink="Ops"
                portType="ns1:DisputeOperationsChannel" operation="shutdown"
                inputVariable="request"/>
        <invoke name="CleanNet" partnerLink="Net" portType="ns1:DisputeChannel"
                operation="shutdown" inputVariable="request"/>
      </sequence>
    </scope>
  </sequence>
</process>
'
]

{ #category : #bpel }
BPEL20BPSourceComplexityScorer >> bpel_DisputeState [
	^ '<process name="DisputeState" >
  <partnerLinks>
    <partnerLink name="client" partnerLinkType="ns3:DisputeCust"
                 myRole="Cust2Process" partnerRole="Process2Cust"/>
    <partnerLink myRole="Ops2Process" name="Ops" partnerRole="Process2Ops"
                 partnerLinkType="ns3:DisputeOps"/>
    <partnerLink myRole="Net2Process" name="Net" partnerRole="Process2Net"
                 partnerLinkType="ns3:DisputeNet"/>
  </partnerLinks>
  <variables>
    <variable name="request" messageType="client:DisputeMessage"/>
    <variable name="state" type="xsd:string"/>
    <variable name="capturingState" type="xsd:string"/>
    <variable name="investigatingState" type="xsd:string"/>
    <variable name="chargingBackState" type="xsd:string"/>
    <variable name="stateHist" type="xsd:string"/>
    <variable name="loopContinue" type="xsd:boolean"/>
  </variables>
  <sequence name="main">
    <receive name="CustSubmit" partnerLink="client"
             portType="ns3:DisputeCustomerChannel" operation="submit"
             variable="request" createInstance="yes"/>
    <scope name="ScopeInit">
      <sequence name="Sequence">
        <invoke name="initOps" partnerLink="Ops"
                portType="ns3:DisputeOperationsChannel" operation="startup"
                inputVariable="request"/>
        <invoke name="initNet" partnerLink="Net" portType="ns3:DisputeChannel"
                operation="startup" inputVariable="request"/>
        <assign name="initVars">
          <copy>
            <from expression="string(''Capturing'')"/>
            <to variable="state"/>
          </copy>
          <copy>
            <from expression="string(''InitiallyCaptured'')"/>
            <to variable="capturingState"/>
          </copy>
          <copy>
            <from expression="string(''FullyCaptured'')"/>
            <to variable="investigatingState"/>
          </copy>
          <copy>
            <from expression="string(''ChargedBack'')"/>
            <to variable="chargingBackState"/>
          </copy>
          <copy>
            <from expression="true()"/>
            <to variable="loopContinue"/>
          </copy>
          <copy>
            <from expression="string(''*Started'')"/>
            <to variable="stateHist"/>
          </copy>
        </assign>
      </sequence>
    </scope>
    <while name="While" condition="bpws:getVariableData(''loopContinue'')=true()">
      <switch name="topStateSwitch">
        <case condition="bpws:getVariableData(''state'')=''Rejected''  or  bpws:getVariableData(''state'')=''WrittenOff'' or bpws:getVariableData(''state'')=''Won'' or bpws:getVariableData(''state'')=''Lost''">
          <sequence name="Sequence">
            <assign name="saveState">
              <copy>
                <from expression="concat(concat(bpws:getVariableData(''stateHist''),'' ''),bpws:getVariableData(''state''))"/>
                <to variable="stateHist"/>
              </copy>
              <copy>
                <from variable="state"/>
                <to variable="request" part="dispute"
                    query="/ns3:Dispute/ns3:action"/>
              </copy>
            </assign>
            <invoke name="notifyCust" partnerLink="client"
                    portType="ns3:DisputeCustomerCallback" operation="completed"
                    inputVariable="request"/>
            <assign name="setDone">
              <copy>
                <from expression="false()"/>
                <to variable="loopContinue"/>
              </copy>
            </assign>
          </sequence>
        </case>
        <case condition="bpws:getVariableData(''state'')=''Capturing''">
          <sequence name="Sequence">
            <assign name="saveState">
              <copy>
                <from expression="concat(concat(concat(concat(bpws:getVariableData(''stateHist''),'' ''),bpws:getVariableData(''state'')), ''.''), bpws:getVariableData(''capturingState''))"/>
                <to variable="stateHist"/>
              </copy>
            </assign>
            <switch name="Switch">
              <case condition="bpws:getVariableData(''capturingState'')=''AwaitingDocs''">
                <sequence name="Sequence">
                  <invoke name="custUpdate" partnerLink="client"
                          portType="ns3:DisputeCustomerCallback"
                          operation="updateRequired" inputVariable="request"/>
                  <pick name="Pick">
                    <onMessage portType="ns3:DisputeCustomerChannel"
                               operation="cancel" variable="request"
                               partnerLink="client">
                      <assign name="setState">
                        <copy>
                          <from expression="string(''Cancelled'')"/>
                          <to variable="state"/>
                        </copy>
                      </assign>
                    </onMessage>
                    <onMessage portType="ns3:DisputeCustomerChannel"
                               operation="update" variable="request"
                               partnerLink="client">
                      <assign name="setState">
                        <copy>
                          <from expression="string(''ExaminingDocs'')"/>
                          <to variable="capturingState"/>
                        </copy>
                      </assign>
                    </onMessage>
                    <onMessage portType="ns3:DisputeCustomerChannel"
                               operation="simTimeout" variable="request"
                               partnerLink="client">
                      <sequence>
                        <invoke name="ops" partnerLink="Ops"
                                portType="ns3:DisputeOperationsChannel"
                                operation="close" inputVariable="request"/>
                        <assign name="setState">
                          <copy>
                            <from expression="string(''Rejected'')"/>
                            <to variable="state"/>
                          </copy>
                        </assign>
                      </sequence>
                    </onMessage>
                  </pick>
                </sequence>
              </case>
              <case condition="bpws:getVariableData(''capturingState'')=''InitiallyCaptured'' or bpws:getVariableData(''capturingState'')=''ExaminingDocs''">
                <sequence name="Sequence">
                  <assign name="SetAction">
                    <copy>
                      <from expression="string(''ReviewCapture'')"/>
                      <to variable="request" part="dispute"
                          query="/ns3:Dispute/ns3:action"/>
                    </copy>
                  </assign>
                  <invoke name="ops" partnerLink="Ops"
                          portType="ns3:DisputeOperationsChannel"
                          operation="pickup" inputVariable="request"/>
                  <pick name="Pick">
                    <onMessage portType="ns3:DisputeOperationsCallback"
                               operation="rejected" variable="request"
                               partnerLink="Ops">
                      <assign name="setState">
                        <copy>
                          <from expression="string(''Rejected'')"/>
                          <to variable="state"/>
                        </copy>
                      </assign>
                    </onMessage>
                    <onMessage portType="ns3:DisputeOperationsCallback"
                               operation="writtenOff" variable="request"
                               partnerLink="Ops">
                      <assign name="setState">
                        <copy>
                          <from expression="string(''WrittenOff'')"/>
                          <to variable="state"/>
                        </copy>
                      </assign>
                    </onMessage>
                    <onMessage portType="ns3:DisputeOperationsCallback"
                               operation="captured" variable="request"
                               partnerLink="Ops">
                      <assign name="setState">
                        <copy>
                          <from expression="string(''Investigating'')"/>
                          <to variable="state"/>
                        </copy>
                      </assign>
                    </onMessage>
                    <onMessage portType="ns3:DisputeOperationsCallback"
                               operation="requestedDocs" variable="request"
                               partnerLink="Ops">
                      <assign name="setState">
                        <copy>
                          <from expression="string(''AwaitingDocs'')"/>
                          <to variable="capturingState"/>
                        </copy>
                      </assign>
                    </onMessage>
                    <onMessage portType="ns3:DisputeCustomerChannel"
                               operation="cancel" variable="request"
                               partnerLink="client">
                      <assign name="setState">
                        <copy>
                          <from expression="string(''Cancelled'')"/>
                          <to variable="state"/>
                        </copy>
                      </assign>
                    </onMessage>
                  </pick>
                </sequence>
              </case>
              <otherwise>
                <throw name="Throw" faultName="bpws:selectionFailure"/>
              </otherwise>
            </switch>
          </sequence>
        </case>
        <case condition="bpws:getVariableData(''state'')=''Investigating''">
          <sequence name="Sequence">
            <assign name="saveState">
              <copy>
                <from expression="concat(concat(concat(concat(bpws:getVariableData(''stateHist''),'' ''),bpws:getVariableData(''state'')), ''.''), bpws:getVariableData(''investigatingState''))"/>
                <to variable="stateHist"/>
              </copy>
            </assign>
            <switch name="Switch">
              <case condition="bpws:getVariableData(''investigatingState'')=''ExaminingCustOnDraft'' or bpws:getVariableData(''investigatingState'')=''OpsContactingCust''">
                <sequence name="Sequence">
                  <assign name="SetAction">
                    <copy>
                      <from variable="investigatingState"/>
                      <to variable="request" part="dispute"
                          query="/ns3:Dispute/ns3:action"/>
                    </copy>
                  </assign>
                  <invoke name="ops" partnerLink="Ops"
                          portType="ns3:DisputeOperationsChannel"
                          operation="pickup" inputVariable="request"/>
                  <pick name="Pick">
                    <onMessage portType="ns3:DisputeOperationsCallback"
                               operation="rejected" variable="request"
                               partnerLink="Ops">
                      <assign name="setState">
                        <copy>
                          <from expression="string(''Rejected'')"/>
                          <to variable="state"/>
                        </copy>
                      </assign>
                    </onMessage>
                    <onMessage portType="ns3:DisputeOperationsCallback"
                               operation="chargedBack" variable="request"
                               partnerLink="Ops">
                      <assign name="setState">
                        <copy>
                          <from expression="string(''ChargingBack'')"/>
                          <to variable="state"/>
                        </copy>
                      </assign>
                    </onMessage>
                  </pick>
                </sequence>
              </case>
              <case condition="bpws:getVariableData(''investigatingState'')=''AwaitingCustOnDraft''">
                <sequence name="Sequence">
                  <invoke name="custUpdate" partnerLink="client"
                          portType="ns3:DisputeCustomerCallback"
                          operation="updateRequired" inputVariable="request"/>
                  <pick name="Pick">
                    <onMessage portType="ns3:DisputeCustomerChannel"
                               operation="update" variable="request"
                               partnerLink="client">
                      <assign name="setState">
                        <copy>
                          <from expression="string(''ExaminingCustOnDraft'')"/>
                          <to variable="investigatingState"/>
                        </copy>
                      </assign>
                    </onMessage>
                    <onMessage portType="ns3:DisputeCustomerChannel"
                               operation="simTimeout" variable="request"
                               partnerLink="client">
                      <assign name="setState">
                        <copy>
                          <from expression="string(''OpsContactingCust'')"/>
                          <to variable="investigatingState"/>
                        </copy>
                      </assign>
                    </onMessage>
                  </pick>
                </sequence>
              </case>
              <case condition="bpws:getVariableData(''investigatingState'')=''ExaminingDraft'' or bpws:getVariableData(''investigatingState'')=''OpsContactingMerchant''">
                <sequence name="Sequence">
                  <assign name="SetAction">
                    <copy>
                      <from variable="investigatingState"/>
                      <to variable="request" part="dispute"
                          query="/ns3:Dispute/ns3:action"/>
                    </copy>
                  </assign>
                  <invoke name="ops" partnerLink="Ops"
                          portType="ns3:DisputeOperationsChannel"
                          operation="pickup" inputVariable="request"/>
                  <pick name="Pick">
                    <onMessage portType="ns3:DisputeOperationsCallback"
                               operation="rejected" variable="request"
                               partnerLink="Ops">
                      <assign name="setState">
                        <copy>
                          <from expression="string(''Rejected'')"/>
                          <to variable="state"/>
                        </copy>
                      </assign>
                    </onMessage>
                    <onMessage portType="ns3:DisputeOperationsCallback"
                               operation="chargedBack" variable="request"
                               partnerLink="Ops">
                      <assign name="setState">
                        <copy>
                          <from expression="string(''ChargingBack'')"/>
                          <to variable="state"/>
                        </copy>
                      </assign>
                    </onMessage>
                    <onMessage portType="ns3:DisputeOperationsCallback"
                               operation="requestedDocs" variable="request"
                               partnerLink="Ops">
                      <assign name="setState">
                        <copy>
                          <from expression="string(''AwaitingCustOnDraft'')"/>
                          <to variable="investigatingState"/>
                        </copy>
                      </assign>
                    </onMessage>
                  </pick>
                </sequence>
              </case>
              <case condition="bpws:getVariableData(''investigatingState'')=''AwaitingDraft''">
                <sequence name="Sequence">
                  <invoke name="NetDraft" partnerLink="Net"
                          portType="ns3:DisputeChannel" operation="requestDraft"
                          inputVariable="request"/>
                  <pick name="Pick">
                    <onMessage portType="ns3:DisputeCallback" operation="draft"
                               variable="request" partnerLink="Net">
                      <assign name="setState">
                        <copy>
                          <from expression="string(''ExaminingDraft'')"/>
                          <to variable="investigatingState"/>
                        </copy>
                      </assign>
                    </onMessage>
                    <onMessage portType="ns3:DisputeCallback"
                               operation="simTimeout" variable="request"
                               partnerLink="Net">
                      <assign name="setState">
                        <copy>
                          <from expression="string(''OpsContactingMerchant'')"/>
                          <to variable="investigatingState"/>
                        </copy>
                      </assign>
                    </onMessage>
                  </pick>
                </sequence>
              </case>
              <case condition="bpws:getVariableData(''investigatingState'')=''FullyCaptured''">
                <sequence name="Sequence">
                  <assign name="SetAction">
                    <copy>
                      <from expression="string(''Captured'')"/>
                      <to variable="request" part="dispute"
                          query="/ns3:Dispute/ns3:action"/>
                    </copy>
                  </assign>
                  <invoke name="ops" partnerLink="Ops"
                          portType="ns3:DisputeOperationsChannel"
                          operation="pickup" inputVariable="request"/>
                  <pick name="Pick">
                    <onMessage portType="ns3:DisputeOperationsCallback"
                               operation="rejected" variable="request"
                               partnerLink="Ops">
                      <assign name="setState">
                        <copy>
                          <from expression="string(''Rejected'')"/>
                          <to variable="state"/>
                        </copy>
                      </assign>
                    </onMessage>
                    <onMessage portType="ns3:DisputeOperationsCallback"
                               operation="writtenOff" variable="request"
                               partnerLink="Ops">
                      <assign name="setState">
                        <copy>
                          <from expression="string(''WrittenOff'')"/>
                          <to variable="state"/>
                        </copy>
                      </assign>
                    </onMessage>
                    <onMessage portType="ns3:DisputeOperationsCallback"
                               operation="chargedBack" variable="request"
                               partnerLink="Ops">
                      <assign name="setState">
                        <copy>
                          <from expression="string(''ChargingBack'')"/>
                          <to variable="state"/>
                        </copy>
                      </assign>
                    </onMessage>
                    <onMessage portType="ns3:DisputeOperationsCallback"
                               operation="requestedDocs" variable="request"
                               partnerLink="Ops">
                      <assign name="setState">
                        <copy>
                          <from expression="string(''AwaitingDraft'')"/>
                          <to variable="investigatingState"/>
                        </copy>
                      </assign>
                    </onMessage>
                  </pick>
                </sequence>
              </case>
              <otherwise>
                <throw name="Throw" faultName="bpws:selectionFailure"/>
              </otherwise>
            </switch>
          </sequence>
        </case>
        <case condition="bpws:getVariableData(''state'')=''ChargingBack''">
          <sequence name="Sequence">
            <assign name="saveState">
              <copy>
                <from expression="concat(concat(concat(concat(bpws:getVariableData(''stateHist''),'' ''),bpws:getVariableData(''state'')), ''.''), bpws:getVariableData(''chargingBackState''))"/>
                <to variable="stateHist"/>
              </copy>
            </assign>
            <switch name="Switch">
              <case condition="bpws:getVariableData(''chargingBackState'')=''InArbitration''">
                <sequence name="Sequence">
                  <pick name="Pick">
                    <onMessage portType="ns3:DisputeCallback"
                               operation="rulingWon" variable="request"
                               partnerLink="Net">
                      <assign name="setState">
                        <copy>
                          <from expression="string(''Won'')"/>
                          <to variable="state"/>
                        </copy>
                      </assign>
                    </onMessage>
                    <onMessage portType="ns3:DisputeCallback"
                               operation="rulingLost" variable="request"
                               partnerLink="Net">
                      <assign name="setState">
                        <copy>
                          <from expression="string(''Lost'')"/>
                          <to variable="state"/>
                        </copy>
                      </assign>
                    </onMessage>
                  </pick>
                    <invoke name="ops" partnerLink="Ops"
                            portType="ns3:DisputeOperationsChannel"
                            operation="close" inputVariable="request"/>
                </sequence>
              </case>
              <case condition="bpws:getVariableData(''chargingBackState'')=''ArbitrationRequested''">
                <sequence name="Sequence">
                  <assign name="SetAction">
                    <copy>
                      <from expression="string(''Arbitration'')"/>
                      <to variable="request" part="dispute"
                          query="/ns3:Dispute/ns3:action"/>
                    </copy>
                  </assign>
                  <invoke name="ops" partnerLink="Ops"
                          portType="ns3:DisputeOperationsChannel"
                          operation="pickup" inputVariable="request"/>
                  <pick name="Pick">
                    <onMessage portType="ns3:DisputeOperationsCallback"
                               operation="acceptedArbitration"
                               variable="request" partnerLink="Ops">
                      <sequence name="Sequence">
                        <invoke name="acceptArb" partnerLink="Net"
                                portType="ns3:DisputeChannel"
                                operation="acceptArbitration"
                                inputVariable="request"/>
                        <assign name="setState">
                          <copy>
                            <from expression="string(''InArbitration'')"/>
                            <to variable="chargingBackState"/>
                          </copy>
                        </assign>
                      </sequence>
                    </onMessage>
                    <onMessage portType="ns3:DisputeOperationsCallback"
                               operation="writtenOff" variable="request"
                               partnerLink="Ops">
                      <sequence name="Sequence">
                        <invoke name="rejectArb" partnerLink="Net"
                                portType="ns3:DisputeChannel"
                                operation="rejectArbitration"
                                inputVariable="request"/>
                        <assign name="setState">
                          <copy>
                            <from expression="string(''WrittenOff'')"/>
                            <to variable="state"/>
                          </copy>
                        </assign>
                      </sequence>
                    </onMessage>
                  </pick>
                </sequence>
              </case>
              <case condition="bpws:getVariableData(''chargingBackState'')=''ChargedBackAgain''">
                <sequence name="Sequence">
                  <invoke name="NetCB" partnerLink="Net"
                          portType="ns3:DisputeChannel" operation="chargeback"
                          inputVariable="request"/>
                  <pick name="Pick">
                    <onMessage portType="ns3:DisputeCallback"
                               operation="credited" variable="request"
                               partnerLink="Net">
                      <assign name="setState">
                        <copy>
                          <from expression="string(''Won'')"/>
                          <to variable="state"/>
                        </copy>
                      </assign>
                    </onMessage>
                    <onMessage portType="ns3:DisputeCallback"
                               operation="arbitrationRequested"
                               variable="request" partnerLink="Net">
                      <assign name="setState">
                        <copy>
                          <from expression="string(''ArbitrationRequested'')"/>
                          <to variable="chargingBackState"/>
                        </copy>
                      </assign>
                    </onMessage>
                    <onMessage portType="ns3:DisputeCallback"
                               operation="simTimeout" variable="request"
                               partnerLink="Net">
                      <sequence name="Sequence">
                        <invoke name="ops" partnerLink="Ops"
                                portType="ns3:DisputeOperationsChannel"
                                operation="close" inputVariable="request"/>
                        <assign name="setState">
                          <copy>
                            <from expression="string(''Won'')"/>
                            <to variable="state"/>
                          </copy>
                        </assign>
                      </sequence>
                    </onMessage>
                  </pick>
                </sequence>
              </case>
              <case condition="bpws:getVariableData(''chargingBackState'')=''Represented''">
                <sequence name="Sequence">
                  <assign name="SetAction">
                    <copy>
                      <from expression="string(''Represented'')"/>
                      <to variable="request" part="dispute"
                          query="/ns3:Dispute/ns3:action"/>
                    </copy>
                  </assign>
                  <invoke name="ops" partnerLink="Ops"
                          portType="ns3:DisputeOperationsChannel"
                          operation="pickup" inputVariable="request"/>
                  <pick name="Pick">
                    <onMessage portType="ns3:DisputeOperationsCallback"
                               operation="rejected" variable="request"
                               partnerLink="Ops">
                      <assign name="setState">
                        <copy>
                          <from expression="string(''Rejected'')"/>
                          <to variable="state"/>
                        </copy>
                      </assign>
                    </onMessage>
                    <onMessage portType="ns3:DisputeOperationsCallback"
                               operation="writtenOff" variable="request"
                               partnerLink="Ops">
                      <assign name="setState">
                        <copy>
                          <from expression="string(''WrittenOff'')"/>
                          <to variable="state"/>
                        </copy>
                      </assign>
                    </onMessage>
                    <onMessage portType="ns3:DisputeOperationsCallback"
                               operation="chargedBack" variable="request"
                               partnerLink="Ops">
                      <assign name="setState">
                        <copy>
                          <from expression="string(''ChargedBackAgain'')"/>
                          <to variable="chargingBackState"/>
                        </copy>
                      </assign>
                    </onMessage>
                  </pick>
                </sequence>
              </case>
              <case condition="bpws:getVariableData(''chargingBackState'')=''ChargedBack''">
                <sequence name="Sequence">
                  <invoke name="CustCredit" partnerLink="client"
                          portType="ns3:DisputeCustomerCallback"
                          operation="credited" inputVariable="request"/>
                  <invoke name="NetCB" partnerLink="Net"
                          portType="ns3:DisputeChannel" operation="chargeback"
                          inputVariable="request"/>
                  <pick name="Pick">
                    <onMessage portType="ns3:DisputeCallback"
                               operation="credited" variable="request"
                               partnerLink="Net">
                      <assign name="setState">
                        <copy>
                          <from expression="string(''Won'')"/>
                          <to variable="state"/>
                        </copy>
                      </assign>
                    </onMessage>
                    <onMessage portType="ns3:DisputeCallback"
                               operation="represented" variable="request"
                               partnerLink="Net">
                      <assign name="setState">
                        <copy>
                          <from expression="string(''Represented'')"/>
                          <to variable="chargingBackState"/>
                        </copy>
                      </assign>
                    </onMessage>
                    <onMessage portType="ns3:DisputeCallback"
                               operation="simTimeout" variable="request"
                               partnerLink="Net">
                      <sequence name="Sequence">
                        <invoke name="ops" partnerLink="Ops"
                                portType="ns3:DisputeOperationsChannel"
                                operation="close" inputVariable="request"/>
                        <assign name="setState">
                          <copy>
                            <from expression="string(''Won'')"/>
                            <to variable="state"/>
                          </copy>
                        </assign>
                      </sequence>
                    </onMessage>
                  </pick>
                </sequence>
              </case>
              <otherwise>
                <throw name="Throw" faultName="bpws:selectionFailure"/>
              </otherwise>
            </switch>
          </sequence>
        </case>
        <case condition="bpws:getVariableData(''state'')=''Cancelled''">
          <sequence name="Sequence">
            <assign name="saveState">
              <copy>
                <from expression="concat(concat(bpws:getVariableData(''stateHist''),'' ''),bpws:getVariableData(''state''))"/>
                <to variable="stateHist"/>
              </copy>
            </assign>
            <invoke name="notifyCust" partnerLink="client"
                    portType="ns3:DisputeCustomerCallback" operation="completed"
                    inputVariable="request"/>
            <invoke name="notifyOps" partnerLink="Ops"
                    portType="ns3:DisputeOperationsChannel" operation="cancel"
                    inputVariable="request"/>
            <assign name="setDone">
              <copy>
                <from expression="false()"/>
                <to variable="loopContinue"/>
              </copy>
            </assign>
          </sequence>
        </case>
        <otherwise>
          <throw name="Throw" faultName="bpws:selectionFailure"/>
        </otherwise>
      </switch>
    </while>
    <scope name="ScopeCleanup">
      <sequence name="Sequence">
        <invoke name="cleanOps" partnerLink="Ops"
                portType="ns3:DisputeOperationsChannel" operation="shutdown"
                inputVariable="request"/>
        <invoke name="cleanNet" partnerLink="Net" portType="ns3:DisputeChannel"
                operation="shutdown" inputVariable="request"/>
        <assign name="saveState">
          <copy>
            <from expression="concat(bpws:getVariableData(''stateHist''),'' Completed*'')"/>
            <to variable="stateHist"/>
          </copy>
        </assign>
      </sequence>
    </scope>
  </sequence>
</process>
'
]
