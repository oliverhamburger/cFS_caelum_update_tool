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
CFE_EVS_BINARY_FILTER -> CFE_EVS_EventFilter_BINARY 
CFE_EVS_DEBUG -> CFE_EVS_EventType_DEBUG<br/>
CFE_SB_MsgPtr_t -> CFE_MSG_Message_t *<br/>
CFE_SB_Msg_t -> CFE_MSG_Message_t<br/>
CFE_ES_RegisterChildTask(); -> remove<br/>
CFE_ES_RegisterApp(); -> remove<br/>
CFE_SB_GetTotalMsgLength(parameter); -> CFE_MSG_GetSize(CFE_MSG_Message_t *MsgPtr, CFE_MSG_Size_t *Size);<br/>                  
CFE_SB_SetTotalMsgLength(parameter, parameter); -> CFE_MSG_SetSize(CFE_MSG_Message_t *MsgPtr, CFE_MSG_Size_t Size);<br/>
CFE_SB_GetMsgId(parameter); -> CFE_MSG_GetMsgId(CFE_MSG_Message_t *MsgPtr, CFE_SB_MsgId_t *MsgId);<br/>
CFE_SB_GetCmdCode(parameter); -> CFE_MSG_GetFcnCode(CFE_MSG_Message_t *MsgPtr, CFE_MSG_FcnCode_t *FcnCode);<br/>
CFE_SB_SetCmdCode(parameter, parameter); -> CFE_MSG_SetFcnCode(CFE_MSG_Message_t *MsgPtr, CFE_MSG_FcnCode_t FcnCode);<br/>
CFE_SB_InitMsg(parameter, parameter, parameter, parameter); -> CFE_MSG_Init(CFE_MSG_Message_t *MsgPtr, CFE_SB_MsgId_t MsgId, CFE_MSG_Size_t Size);<br/>
CFE_SB_SendMsg(parameter); -> CFE_SB_TransmitMsg(CFE_MSG_Message_t *MsgPtr, bool IncrementSequenceCount);<br/>
