TRUE -> true
FALSE -> false
boolean -> bool
CFE_SB_CMD_HDR_SIZE -> sizeof(CFE_MSG_CommandHeader_t)
CFE_SB_TLM_HDR_SIZE -> sizeof(CFE_MSG_TelemetryHeader_t)
CFE_ES_APP_ERROR -> CFE_ES_RunStatus_APP_ERROR
CFE_ES_APP_RUN -> CFE_ES_RunStatus_APP_RUN
CFE_EVS_ERROR -> CFE_EVS_EventType_ERROR
CFE_EVS_INFORMATION -> CFE_EVS_EventType_INFORMATION
CFE_EVS_DEBUG -> CFE_EVS_EventType_DEBUG
CFE_SB_MsgPtr_t -> CFE_MSG_Message_t *
CFE_SB_Msg_t -> CFE_MSG_Message_t
CFE_ES_RegisterChildTask(); -> remove
CFE_ES_RegisterApp(); -> remove
CFE_SB_GetTotalMsgLength(old parameters) -> CFE_MSG_GetSize(new parameters)
CFE_SB_SetTotalMsgLength(old parameters) -> CFE_MSG_SetSize(new parameters)
CFE_SB_GetMsgId(old parameters) -> CFE_MSG_GetMsgId(new parameters)
CFE_SB_GetCmdCode(old parameters) -> CFE_MSG_GetFcnCode(new parameters)
CFE_SB_SetCmdCode(old parameters) -> CFE_MSG_SetFcnCode(new parameters)
CFE_SB_InitMsg(old parameters) -> CFE_MSG_Init(new parameters)
CFE_SB_SendMsg(old parameters) -> CFE_SB_TransmitMsg(new parameters)



//testing duplicates
TRUE -> true
FALSE -> false
boolean -> bool
CFE_SB_CMD_HDR_SIZE -> sizeof(CFE_MSG_CommandHeader_t)
CFE_SB_TLM_HDR_SIZE -> sizeof(CFE_MSG_TelemetryHeader_t)
CFE_ES_APP_ERROR -> CFE_ES_RunStatus_APP_ERROR
CFE_ES_APP_RUN -> CFE_ES_RunStatus_APP_RUN
CFE_EVS_ERROR -> CFE_EVS_EventType_ERROR
CFE_EVS_INFORMATION -> CFE_EVS_EventType_INFORMATION
CFE_EVS_DEBUG -> CFE_EVS_EventType_DEBUG
CFE_SB_MsgPtr_t -> CFE_MSG_Message_t *
CFE_SB_Msg_t -> CFE_MSG_Message_t
CFE_ES_RegisterChildTask(); -> remove
CFE_ES_RegisterApp(); -> remove
CFE_SB_GetTotalMsgLength(old parameters) -> CFE_MSG_GetSize(new parameters)
CFE_SB_SetTotalMsgLength(old parameters) -> CFE_MSG_SetSize(new parameters)
CFE_SB_GetMsgId(old parameters) -> CFE_MSG_GetMsgId(new parameters)
CFE_SB_GetCmdCode(old parameters) -> CFE_MSG_GetFcnCode(new parameters)
CFE_SB_SetCmdCode(old parameters) -> CFE_MSG_SetFcnCode(new parameters)
CFE_SB_InitMsg(old parameters) -> CFE_MSG_Init(new parameters)
CFE_SB_SendMsg(old parameters) -> CFE_SB_TransmitMsg(new parameters)
