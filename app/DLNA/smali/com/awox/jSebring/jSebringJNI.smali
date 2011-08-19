.class Lcom/awox/jSebring/jSebringJNI;
.super Ljava/lang/Object;
.source "jSebringJNI.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native MediaServerError_CannotInitializeCDS_get()I
.end method

.method public static final native MediaServerError_CannotInitializeUPNP_get()I
.end method

.method public static final native MediaServerError_CannotLoadConfig_get()I
.end method

.method public static final native MediaServerError_CannotStartMBusServer_get()I
.end method

.method public static final native MediaServerError_CannotStartStreamingEngine_get()I
.end method

.method public static final native MediaServerError_None_get()I
.end method

.method public static final native MediaServerError_TCPNotInitialized_get()I
.end method

.method public static final native MediaServerManagerError_CannotConnect_get()I
.end method

.method public static final native MediaServerManagerError_InvalidValue_get()I
.end method

.method public static final native MediaServerManagerError_None_get()I
.end method

.method public static final native MediaServerManagerError_NotFound_get()I
.end method

.method public static final native MediaServerManagerError_NotImplemented_get()I
.end method

.method public static final native MediaServerManagerError_Timeout_get()I
.end method

.method public static final native MediaServerManager_AddSharedFolder(JLcom/awox/jSebring/MediaServerManager;Ljava/lang/String;)I
.end method

.method public static final native MediaServerManager_ClearDatabase(JLcom/awox/jSebring/MediaServerManager;)I
.end method

.method public static final native MediaServerManager_GetCurrentStatus(JLcom/awox/jSebring/MediaServerManager;)Ljava/lang/String;
.end method

.method public static final native MediaServerManager_GetSharedFolderListAsString(JLcom/awox/jSebring/MediaServerManager;)Ljava/lang/String;
.end method

.method public static final native MediaServerManager_GetUpdateInterval(JLcom/awox/jSebring/MediaServerManager;J)I
.end method

.method public static final native MediaServerManager_IsUpdating(JLcom/awox/jSebring/MediaServerManager;)Z
.end method

.method public static final native MediaServerManager_RemoveSharedFolder(JLcom/awox/jSebring/MediaServerManager;Ljava/lang/String;)I
.end method

.method public static final native MediaServerManager_RestartDMS(JLcom/awox/jSebring/MediaServerManager;)I
.end method

.method public static final native MediaServerManager_SetFriendlyName(JLcom/awox/jSebring/MediaServerManager;Ljava/lang/String;)I
.end method

.method public static final native MediaServerManager_SetMediaTypeShared(JLcom/awox/jSebring/MediaServerManager;ZZZ)I
.end method

.method public static final native MediaServerManager_SetShared(JLcom/awox/jSebring/MediaServerManager;Ljava/lang/String;Z)I
.end method

.method public static final native MediaServerManager_SetUpdateInterval(JLcom/awox/jSebring/MediaServerManager;J)I
.end method

.method public static final native MediaServerManager_StartDMS(JLcom/awox/jSebring/MediaServerManager;Ljava/lang/String;)I
.end method

.method public static final native MediaServerManager_StopDMS(JLcom/awox/jSebring/MediaServerManager;)I
.end method

.method public static final native MediaServerManager_Update(JLcom/awox/jSebring/MediaServerManager;)I
.end method

.method public static final native MediaServerManager_UpdatePath(JLcom/awox/jSebring/MediaServerManager;Ljava/lang/String;)I
.end method

.method public static final native MediaServerManager_UpdateStatus(JLcom/awox/jSebring/MediaServerManager;)I
.end method

.method public static final native MediaServerSharedFolderInfo_mFolderPath_get(JLcom/awox/jSebring/MediaServerSharedFolderInfo;)Ljava/lang/String;
.end method

.method public static final native MediaServerSharedFolderInfo_mFolderPath_set(JLcom/awox/jSebring/MediaServerSharedFolderInfo;Ljava/lang/String;)V
.end method

.method public static final native MediaServerSharedFolderInfo_mfParentalLocked_get(JLcom/awox/jSebring/MediaServerSharedFolderInfo;)Z
.end method

.method public static final native MediaServerSharedFolderInfo_mfParentalLocked_set(JLcom/awox/jSebring/MediaServerSharedFolderInfo;Z)V
.end method

.method public static final native awDMS_main()I
.end method

.method public static final native awLocale_SetNative(Ljava/lang/String;)V
.end method

.method public static final native delete_MediaServerManager(J)V
.end method

.method public static final native delete_MediaServerSharedFolderInfo(J)V
.end method

.method public static final native kApplicationError_AlreadyRunning_get()I
.end method

.method public static final native kApplicationError_ApplicationSpecific_get()I
.end method

.method public static final native kApplicationError_BadCommandLine_get()I
.end method

.method public static final native kApplicationError_CannotInitializePlatform_get()I
.end method

.method public static final native kApplicationError_CannotInitialize_get()I
.end method

.method public static final native kApplicationError_CheckingAlreadyRunning_get()I
.end method

.method public static final native kApplicationError_Expired_get()I
.end method

.method public static final native kApplicationError_FirewallMayBlock_get()I
.end method

.method public static final native kApplicationError_None_get()I
.end method

.method public static final native kApplicationError_Stop_get()I
.end method

.method public static final native kawMediaTypeShared_Error_get()I
.end method

.method public static final native kawMediaTypeShared_Music_get()I
.end method

.method public static final native kawMediaTypeShared_Picture_get()I
.end method

.method public static final native kawMediaTypeShared_Video_get()I
.end method

.method public static final native new_MediaServerManager__SWIG_0(JJ)J
.end method

.method public static final native new_MediaServerManager__SWIG_1(J)J
.end method

.method public static final native new_MediaServerManager__SWIG_2()J
.end method

.method public static final native new_MediaServerManager__SWIG_3(JJJ)J
.end method

.method public static final native new_MediaServerManager__SWIG_4(JJ)J
.end method

.method public static final native new_MediaServerManager__SWIG_5(J)J
.end method

.method public static final native new_MediaServerSharedFolderInfo()J
.end method
