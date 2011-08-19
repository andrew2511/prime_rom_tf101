.class public Lcom/asus/reader/book/DrmProcessor;
.super Ljava/lang/Object;
.source "DrmProcessor.java"


# static fields
.field private static mCurrentDrmTask:I

.field public static mCurrentErrorString:Ljava/lang/String;

.field public static mCurrentErrorWorkflow:Ljava/lang/String;

.field public static mCurrentFulfillBookFormat:Ljava/lang/String;

.field public static mCurrentFulfillBookTitle:Ljava/lang/String;

.field public static mCurrentLatestDoneWorkflow:Ljava/lang/String;

.field public static mDownloadProgress:D

.field public static mFulfillActivityRun:I

.field public static mIsWorkflowError:Z

.field public static mWriteLicenseProgress:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 192
    sput v1, Lcom/asus/reader/book/DrmProcessor;->mCurrentDrmTask:I

    .line 197
    sput v1, Lcom/asus/reader/book/DrmProcessor;->mFulfillActivityRun:I

    .line 256
    sput-boolean v1, Lcom/asus/reader/book/DrmProcessor;->mIsWorkflowError:Z

    .line 257
    sput-object v0, Lcom/asus/reader/book/DrmProcessor;->mCurrentLatestDoneWorkflow:Ljava/lang/String;

    .line 258
    sput-object v0, Lcom/asus/reader/book/DrmProcessor;->mCurrentErrorWorkflow:Ljava/lang/String;

    .line 259
    sput-object v0, Lcom/asus/reader/book/DrmProcessor;->mCurrentErrorString:Ljava/lang/String;

    .line 262
    sput-wide v2, Lcom/asus/reader/book/DrmProcessor;->mDownloadProgress:D

    .line 263
    sput-wide v2, Lcom/asus/reader/book/DrmProcessor;->mWriteLicenseProgress:D

    .line 264
    sput-object v0, Lcom/asus/reader/book/DrmProcessor;->mCurrentFulfillBookTitle:Ljava/lang/String;

    .line 265
    sput-object v0, Lcom/asus/reader/book/DrmProcessor;->mCurrentFulfillBookFormat:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native activationNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static anonymousActivation()V
    .locals 3

    .prologue
    .line 43
    const-string v0, ""

    const-string v1, ""

    const-string v2, "anonymous"

    invoke-static {v0, v1, v2}, Lcom/asus/reader/book/DrmProcessor;->activationNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static native fulfillmentNative(Ljava/lang/String;)V
.end method

.method public static native getActivationStatusNative()I
.end method

.method public static native getActivationUserNameNative()Ljava/lang/String;
.end method

.method public static getErrorDesc(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "errorId"

    .prologue
    const v0, 0x7f070086

    .line 137
    packed-switch p1, :pswitch_data_0

    .line 161
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 139
    :pswitch_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 141
    :pswitch_1
    const v0, 0x7f070087

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 143
    :pswitch_2
    const v0, 0x7f070088

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 145
    :pswitch_3
    const v0, 0x7f070089

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 147
    :pswitch_4
    const v0, 0x7f07008a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 149
    :pswitch_5
    const v0, 0x7f07008b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 151
    :pswitch_6
    const v0, 0x7f07008c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 153
    :pswitch_7
    const v0, 0x7f0700e0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 155
    :pswitch_8
    const v0, 0x7f070095

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 157
    :pswitch_9
    const v0, 0x7f070096

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 159
    :pswitch_a
    const v0, 0x7f070097

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static getErrorId(Ljava/lang/String;)I
    .locals 4
    .parameter "errorString"

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x0

    .line 104
    if-nez p0, :cond_0

    .line 105
    const-string v0, "DRM Processor"

    const-string v1, "errorString is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 132
    :goto_0
    return v0

    .line 108
    :cond_0
    const-string v0, "E_ADEPT_NOT_READY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    const/4 v0, 0x1

    goto :goto_0

    .line 110
    :cond_1
    const-string v0, "E_STREAM_ERROR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    const/4 v0, 0x2

    goto :goto_0

    .line 112
    :cond_2
    const-string v0, "E_ADEPT_REQUEST_EXPIRED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    const/4 v0, 0x3

    goto :goto_0

    .line 114
    :cond_3
    const-string v0, "E_ADEPT_NO_VALID_LICENSE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 115
    goto :goto_0

    .line 116
    :cond_4
    const-string v0, "E_ADEPT_CORE_PART_ACCESS_DENIED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 117
    goto :goto_0

    .line 118
    :cond_5
    const-string v0, "E_ACT_TOO_MANY_ACTIVATIONS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 119
    const/4 v0, 0x5

    goto :goto_0

    .line 120
    :cond_6
    const-string v0, "E_AUTH_FAILED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 121
    const/4 v0, 0x6

    goto :goto_0

    .line 122
    :cond_7
    const-string v0, "E_LIC_ALREADY_FULFILLED_BY_ANOTHER_USER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 123
    const/4 v0, 0x7

    goto :goto_0

    .line 124
    :cond_8
    const-string v0, "timeout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 125
    const/16 v0, 0x8

    goto :goto_0

    .line 126
    :cond_9
    const-string v0, "unknown book format"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 127
    const/16 v0, 0x9

    goto :goto_0

    .line 128
    :cond_a
    const-string v0, "acsm file not exist"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 129
    const/16 v0, 0xa

    goto :goto_0

    .line 131
    :cond_b
    const-string v0, "DRM Processor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown errorString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 132
    goto/16 :goto_0
.end method

.method public static getShortErrorDesc(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "errorId"

    .prologue
    const v0, 0x7f0700a5

    .line 166
    packed-switch p1, :pswitch_data_0

    .line 188
    :pswitch_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 168
    :pswitch_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 170
    :pswitch_2
    const v0, 0x7f0700a6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 172
    :pswitch_3
    const v0, 0x7f0700a7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 174
    :pswitch_4
    const v0, 0x7f0700a8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 176
    :pswitch_5
    const v0, 0x7f0700a9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 178
    :pswitch_6
    const v0, 0x7f0700aa

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 180
    :pswitch_7
    const v0, 0x7f0700e1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 182
    :pswitch_8
    const v0, 0x7f0700ac

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 184
    :pswitch_9
    const v0, 0x7f0700ad

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 186
    :pswitch_a
    const v0, 0x7f0700ae

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static initActivation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 249
    const/4 v0, 0x0

    sput-boolean v0, Lcom/asus/reader/book/DrmProcessor;->mIsWorkflowError:Z

    .line 250
    sput-object v1, Lcom/asus/reader/book/DrmProcessor;->mCurrentLatestDoneWorkflow:Ljava/lang/String;

    .line 251
    sput-object v1, Lcom/asus/reader/book/DrmProcessor;->mCurrentErrorWorkflow:Ljava/lang/String;

    .line 252
    sput-object v1, Lcom/asus/reader/book/DrmProcessor;->mCurrentErrorString:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public static initFulfillment()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 235
    const/4 v0, 0x0

    sput-boolean v0, Lcom/asus/reader/book/DrmProcessor;->mIsWorkflowError:Z

    .line 236
    sput-object v1, Lcom/asus/reader/book/DrmProcessor;->mCurrentLatestDoneWorkflow:Ljava/lang/String;

    .line 237
    sput-object v1, Lcom/asus/reader/book/DrmProcessor;->mCurrentErrorWorkflow:Ljava/lang/String;

    .line 238
    sput-object v1, Lcom/asus/reader/book/DrmProcessor;->mCurrentErrorString:Ljava/lang/String;

    .line 241
    sput-wide v2, Lcom/asus/reader/book/DrmProcessor;->mDownloadProgress:D

    .line 242
    sput-wide v2, Lcom/asus/reader/book/DrmProcessor;->mWriteLicenseProgress:D

    .line 243
    sput-object v1, Lcom/asus/reader/book/DrmProcessor;->mCurrentFulfillBookTitle:Ljava/lang/String;

    .line 244
    sput-object v1, Lcom/asus/reader/book/DrmProcessor;->mCurrentFulfillBookFormat:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public static native isDrmClientIdleNative()Z
.end method

.method public static native isHostIdleNative()Z
.end method

.method public static registerDrmTask(I)I
    .locals 1
    .parameter "regDrmTaskId"

    .prologue
    .line 204
    sget v0, Lcom/asus/reader/book/DrmProcessor;->mCurrentDrmTask:I

    if-lez v0, :cond_0

    .line 205
    sget v0, Lcom/asus/reader/book/DrmProcessor;->mCurrentDrmTask:I

    .line 208
    :goto_0
    return v0

    .line 207
    :cond_0
    sput p0, Lcom/asus/reader/book/DrmProcessor;->mCurrentDrmTask:I

    .line 208
    sget v0, Lcom/asus/reader/book/DrmProcessor;->mCurrentDrmTask:I

    goto :goto_0
.end method
