#These replacements should be one to one, mostly macroes, typedefs, and removals
grep -rl --include \*.h --include \*.c "TRUE" . | xargs sed -i 's/TRUE/true/g'
grep -rl --include \*.h --include \*.c "FALSE" . | xargs sed -i 's/FALSE/false/g'
grep -rl --include \*.h --include \*.c "boolean" . | xargs sed -i 's/boolean/bool/g'
grep -rl --include \*.h --include \*.c "CFE_SB_CMD_HDR_SIZE" . | xargs sed -i 's/CFE_SB_CMD_HDR_SIZE/sizeof(CFE_MSG_CommandHeader_t)/g'
grep -rl --include \*.h --include \*.c "CFE_SB_TLM_HDR_SIZE" . | xargs sed -i 's/CFE_SB_TLM_HDR_SIZE/sizeof(CFE_MSG_TelemetryHeader_t)/g'
grep -rl --include \*.h --include \*.c "CFE_ES_APP_ERROR" . | xargs sed -i 's/CFE_ES_APP_ERROR/CFE_ES_RunStatus_APP_ERROR/g'
grep -rl --include \*.h --include \*.c "CFE_ES_APP_RUN" . | xargs sed -i 's/CFE_ES_APP_RUN/CFE_ES_RunStatus_APP_RUN/g'
grep -rl --include \*.h --include \*.c "CFE_EVS_ERROR" . | xargs sed -i 's/CFE_EVS_ERROR/CFE_EVS_EventType_ERROR/g'
grep -rl --include \*.h --include \*.c "CFE_EVS_INFORMATION" . | xargs sed -i 's/CFE_EVS_INFORMATION/CFE_EVS_EventType_INFORMATION/g'
grep -rl --include \*.h --include \*.c "CFE_EVS_DEBUG" . | xargs sed -i 's/CFE_EVS_DEBUG/CFE_EVS_EventType_DEBUG/g'
grep -rl --include \*.h --include \*.c "CFE_SB_MsgPtr_t" . | xargs sed -i 's/CFE_SB_MsgPtr_t/CFE_MSG_Message_t */g'
grep -rl --include \*.h --include \*.c "CFE_SB_Msg_t" . | xargs sed -i 's/CFE_SB_Msg_t/CFE_MSG_Message_t/g'
grep -rl --include \*.h --include \*.c "CFE_ES_RegisterChildTask();" . | xargs sed -i 's/CFE_ES_RegisterChildTask();//g'
grep -rl --include \*.h --include \*.c "CFE_ES_RegisterApp();" . | xargs sed -i 's/CFE_ES_RegisterApp();//g'

#These replacements require changes to the parameters passed in, so the replacement includes the function prototype to allow the user to quickly make parameter changes
grep -rl --include \*.h --include \*.c "CFE_SB_GetTotalMsgLength" . | xargs sed -i 's/CFE_SB_GetTotalMsgLength/CFE_MSG_GetSize(const CFE_MSG_Message_t *MsgPtr, CFE_MSG_Size_t *Size);/g'
grep -rl --include \*.h --include \*.c "CFE_SB_SetTotalMsgLength" . | xargs sed -i 's/CFE_SB_SetTotalMsgLength/CFE_MSG_SetSize(CFE_MSG_Message_t *MsgPtr, CFE_MSG_Size_t Size);/g'
grep -rl --include \*.h --include \*.c "CFE_SB_GetMsgId" . | xargs sed -i 's/CFE_SB_GetMsgId/CFE_MSG_GetMsgId(const CFE_MSG_Message_t *MsgPtr, CFE_SB_MsgId_t *MsgId);/g'
grep -rl --include \*.h --include \*.c "CFE_SB_GetCmdCode" . | xargs sed -i 's/CFE_SB_GetCmdCode/CFE_MSG_GetFcnCode(const CFE_MSG_Message_t *MsgPtr, CFE_MSG_FcnCode_t *FcnCode);/g'
grep -rl --include \*.h --include \*.c "CFE_SB_SetCmdCode" . | xargs sed -i 's/CFE_SB_SetCmdCode/CFE_MSG_SetFcnCode(CFE_MSG_Message_t *MsgPtr, CFE_MSG_FcnCode_t FcnCode);/g'
grep -rl --include \*.h --include \*.c "CFE_SB_InitMsg" . | xargs sed -i 's/CFE_SB_InitMsg/CFE_MSG_Init(CFE_MSG_Message_t *MsgPtr, CFE_SB_MsgId_t MsgId, CFE_MSG_Size_t Size);/g'
grep -rl --include \*.h --include \*.c "CFE_SB_SendMsg" . | xargs sed -i 's/CFE_SB_SendMsg/CFE_SB_TransmitMsg(CFE_MSG_Message_t *MsgPtr, bool IncrementSequenceCount);/g'



