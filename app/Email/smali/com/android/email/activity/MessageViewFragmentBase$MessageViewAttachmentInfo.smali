.class Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
.super Lcom/android/email/AttachmentInfo;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageViewAttachmentInfo"
.end annotation


# instance fields
.field private cancelButton:Landroid/widget/Button;

.field private iconView:Landroid/widget/ImageView;

.field private infoButton:Landroid/widget/Button;

.field private loadButton:Landroid/widget/Button;

.field private loaded:Z

.field private mProgressView:Landroid/widget/ProgressBar;

.field private openButton:Landroid/widget/Button;

.field private saveButton:Landroid/widget/Button;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .locals 1
    .parameter "context"
    .parameter "oldInfo"

    .prologue
    .line 1198
    invoke-direct {p0, p1, p2}, Lcom/android/email/AttachmentInfo;-><init>(Landroid/content/Context;Lcom/android/email/AttachmentInfo;)V

    .line 1199
    iget-object v0, p2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->openButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->openButton:Landroid/widget/Button;

    .line 1200
    iget-object v0, p2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/Button;

    .line 1201
    iget-object v0, p2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loadButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loadButton:Landroid/widget/Button;

    .line 1202
    iget-object v0, p2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->infoButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->infoButton:Landroid/widget/Button;

    .line 1203
    iget-object v0, p2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/Button;

    .line 1204
    iget-object v0, p2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->iconView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->iconView:Landroid/widget/ImageView;

    .line 1205
    iget-object v0, p2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    .line 1206
    iget-boolean v0, p2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    .line 1207
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Lcom/android/email/activity/MessageViewFragmentBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1175
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;-><init>(Landroid/content/Context;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/widget/ProgressBar;)V
    .locals 0
    .parameter "context"
    .parameter "attachment"
    .parameter "progressView"

    .prologue
    .line 1189
    invoke-direct {p0, p1, p2}, Lcom/android/email/AttachmentInfo;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 1190
    iput-object p3, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    .line 1191
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/widget/ProgressBar;Lcom/android/email/activity/MessageViewFragmentBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1175
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/widget/ProgressBar;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1175
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1175
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->iconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->iconView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->openButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->openButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->infoButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->infoButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loadButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loadButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/Button;

    return-object p1
.end method


# virtual methods
.method public hideProgress()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1211
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1214
    :cond_0
    return-void
.end method

.method public showProgress(I)V
    .locals 2
    .parameter "progress"

    .prologue
    const/4 v1, 0x0

    .line 1217
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1220
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1221
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1223
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1224
    return-void
.end method

.method public showProgressIndeterminate()V
    .locals 2

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1230
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1231
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1233
    :cond_1
    return-void
.end method
