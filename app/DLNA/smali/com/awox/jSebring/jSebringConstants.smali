.class public interface abstract Lcom/awox/jSebring/jSebringConstants;
.super Ljava/lang/Object;
.source "jSebringConstants.java"


# static fields
.field public static final MediaServerError_CannotInitializeCDS:I

.field public static final MediaServerError_CannotInitializeUPNP:I

.field public static final MediaServerError_CannotLoadConfig:I

.field public static final MediaServerError_CannotStartMBusServer:I

.field public static final MediaServerError_CannotStartStreamingEngine:I

.field public static final MediaServerError_None:I

.field public static final MediaServerError_TCPNotInitialized:I

.field public static final MediaServerManagerError_CannotConnect:I

.field public static final MediaServerManagerError_InvalidValue:I

.field public static final MediaServerManagerError_None:I

.field public static final MediaServerManagerError_NotFound:I

.field public static final MediaServerManagerError_NotImplemented:I

.field public static final MediaServerManagerError_Timeout:I

.field public static final kApplicationError_AlreadyRunning:I

.field public static final kApplicationError_ApplicationSpecific:I

.field public static final kApplicationError_BadCommandLine:I

.field public static final kApplicationError_CannotInitialize:I

.field public static final kApplicationError_CannotInitializePlatform:I

.field public static final kApplicationError_CheckingAlreadyRunning:I

.field public static final kApplicationError_Expired:I

.field public static final kApplicationError_FirewallMayBlock:I

.field public static final kApplicationError_None:I

.field public static final kApplicationError_Stop:I

.field public static final kawMediaTypeShared_Error:I

.field public static final kawMediaTypeShared_Music:I

.field public static final kawMediaTypeShared_Picture:I

.field public static final kawMediaTypeShared_Video:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManagerError_None_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->MediaServerManagerError_None:I

    .line 13
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManagerError_CannotConnect_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->MediaServerManagerError_CannotConnect:I

    .line 14
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManagerError_Timeout_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->MediaServerManagerError_Timeout:I

    .line 15
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManagerError_InvalidValue_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->MediaServerManagerError_InvalidValue:I

    .line 16
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManagerError_NotImplemented_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->MediaServerManagerError_NotImplemented:I

    .line 17
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->MediaServerManagerError_NotFound_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->MediaServerManagerError_NotFound:I

    .line 18
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->kawMediaTypeShared_Error_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->kawMediaTypeShared_Error:I

    .line 19
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->kawMediaTypeShared_Video_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->kawMediaTypeShared_Video:I

    .line 20
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->kawMediaTypeShared_Music_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->kawMediaTypeShared_Music:I

    .line 21
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->kawMediaTypeShared_Picture_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->kawMediaTypeShared_Picture:I

    .line 22
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->kApplicationError_None_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->kApplicationError_None:I

    .line 23
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->kApplicationError_Stop_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->kApplicationError_Stop:I

    .line 24
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->kApplicationError_CheckingAlreadyRunning_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->kApplicationError_CheckingAlreadyRunning:I

    .line 25
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->kApplicationError_AlreadyRunning_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->kApplicationError_AlreadyRunning:I

    .line 26
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->kApplicationError_CannotInitializePlatform_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->kApplicationError_CannotInitializePlatform:I

    .line 27
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->kApplicationError_CannotInitialize_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->kApplicationError_CannotInitialize:I

    .line 28
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->kApplicationError_BadCommandLine_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->kApplicationError_BadCommandLine:I

    .line 29
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->kApplicationError_FirewallMayBlock_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->kApplicationError_FirewallMayBlock:I

    .line 30
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->kApplicationError_Expired_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->kApplicationError_Expired:I

    .line 31
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->kApplicationError_ApplicationSpecific_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->kApplicationError_ApplicationSpecific:I

    .line 32
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->MediaServerError_None_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->MediaServerError_None:I

    .line 33
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->MediaServerError_CannotInitializeCDS_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->MediaServerError_CannotInitializeCDS:I

    .line 34
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->MediaServerError_CannotInitializeUPNP_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->MediaServerError_CannotInitializeUPNP:I

    .line 35
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->MediaServerError_CannotStartMBusServer_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->MediaServerError_CannotStartMBusServer:I

    .line 36
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->MediaServerError_TCPNotInitialized_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->MediaServerError_TCPNotInitialized:I

    .line 37
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->MediaServerError_CannotStartStreamingEngine_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->MediaServerError_CannotStartStreamingEngine:I

    .line 38
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->MediaServerError_CannotLoadConfig_get()I

    move-result v0

    sput v0, Lcom/awox/jSebring/jSebringConstants;->MediaServerError_CannotLoadConfig:I

    return-void
.end method
