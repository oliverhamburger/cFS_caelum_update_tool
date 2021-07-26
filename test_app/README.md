# Readme has caelum keywords to test that script doesnt change them

TRUE -> true<br/>
FALSE -> false<br/>
boolean -> bool<br/>
CFE_SB_CMD_HDR_SIZE -> sizeof(CFE_MSG_CommandHeader_t)<br/>
CFE_SB_TLM_HDR_SIZE -> sizeof(CFE_MSG_TelemetryHeader_t)<br/>
CFE_ES_APP_ERROR -> CFE_ES_RunStatus_APP_ERROR<br/>
CFE_ES_APP_RUN -> CFE_ES_RunStatus_APP_RUN<br/>
CFE_EVS_ERROR -> CFE_EVS_EventType_ERROR<br/>
CFE_EVS_INFORMATION -> CFE_EVS_EventType_INFORMATION<br/>
CFE_EVS_DEBUG -> CFE_EVS_EventType_DEBUG<br/>
CFE_SB_MsgPtr_t -> CFE_MSG_Message_t *<br/>
CFE_SB_Msg_t -> CFE_MSG_Message_t<br/>
CFE_ES_RegisterChildTask(); -> remove<br/>
CFE_ES_RegisterApp(); -> remove<br/>
CFE_SB_GetTotalMsgLength(old parameters) -> CFE_MSG_GetSize(new parameters)<br/>
CFE_SB_SetTotalMsgLength(old parameters) -> CFE_MSG_SetSize(new parameters)<br/>
CFE_SB_GetMsgId(old parameters) -> CFE_MSG_GetMsgId(new parameters)<br/>
CFE_SB_GetCmdCode(old parameters) -> CFE_MSG_GetFcnCode(new parameters)<br/>
CFE_SB_SetCmdCode(old parameters) -> CFE_MSG_SetFcnCode(new parameters)<br/>
CFE_SB_InitMsg(old parameters) -> CFE_MSG_Init(new parameters)<br/>
CFE_SB_SendMsg(old parameters) -> CFE_SB_TransmitMsg(new parameters)<br/>
