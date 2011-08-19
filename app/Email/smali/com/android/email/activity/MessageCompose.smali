.class public Lcom/android/email/activity/MessageCompose;
.super Landroid/app/Activity;
.source "MessageCompose.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/android/email/activity/DeleteMessageConfirmationDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;,
        Lcom/android/email/activity/MessageCompose$LoadMessageTask;
    }
.end annotation


# static fields
.field private static final ATTACHMENT_META_SIZE_PROJECTION:[Ljava/lang/String;

.field private static sSaveInProgress:Z

.field private static final sSaveInProgressCondition:Ljava/lang/Object;


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mAction:Ljava/lang/String;

.field private mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

.field private mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

.field private mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

.field private mAttachmentContainer:Landroid/view/View;

.field private mAttachments:Landroid/widget/LinearLayout;

.field private mBccView:Landroid/widget/MultiAutoCompleteTextView;

.field private mCcBccContainer:Landroid/view/View;

.field private mCcView:Landroid/widget/MultiAutoCompleteTextView;

.field private mController:Lcom/android/email/Controller;

.field private mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private mDraftNeedsSaving:Z

.field private mFromView:Landroid/widget/TextView;

.field private mIncludeQuotedTextCheckBox:Landroid/widget/CheckBox;

.field private mLoadAttachmentsTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Void;",
            "[",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadMessageTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageContentView:Landroid/widget/EditText;

.field private mMessageLoaded:Z

.field private mQuotedText:Landroid/webkit/WebView;

.field private mQuotedTextBar:Landroid/view/View;

.field private mSaveEnabled:Z

.field private mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private mSourceMessageProcessed:Z

.field private mSubjectView:Landroid/widget/EditText;

.field private mToView:Landroid/widget/MultiAutoCompleteTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 113
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_size"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/activity/MessageCompose;->ATTACHMENT_META_SIZE_PROJECTION:[Ljava/lang/String;

    .line 121
    sput-boolean v2, Lcom/android/email/activity/MessageCompose;->sSaveInProgress:Z

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageCompose;->sSaveInProgressCondition:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 128
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    .line 912
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/MessageCompose;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/email/activity/MessageCompose;->sSaveInProgressCondition:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageCompose;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getAttachmentsFromUI()[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageCompose;->updateMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;ZZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->getUpdateContentValues(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Lcom/android/email/activity/MessageCompose;->sSaveInProgress:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    sput-boolean p0, Lcom/android/email/activity/MessageCompose;->sSaveInProgress:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/email/activity/MessageCompose;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Attachment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object v0
.end method

.method public static actionCompose(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 194
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->getMessageComposeIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 195
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 199
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static actionCompose(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 3
    .parameter "context"
    .parameter "uriString"
    .parameter "accountId"

    .prologue
    .line 213
    :try_start_0
    invoke-static {p0, p2, p3}, Lcom/android/email/activity/MessageCompose;->getMessageComposeIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 214
    .local v1, i:Landroid/content/Intent;
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    const/4 v2, 0x1

    .line 222
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return v2

    .line 218
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 221
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    .line 222
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static actionEditDraft(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 255
    const-string v0, "com.android.email.intent.action.EDIT_DRAFT"

    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 256
    return-void
.end method

.method public static actionForward(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 243
    const-string v0, "com.android.email.intent.action.FORWARD"

    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 244
    return-void
.end method

.method public static actionReply(Landroid/content/Context;JZ)V
    .locals 1
    .parameter "context"
    .parameter "messageId"
    .parameter "replyAll"

    .prologue
    .line 234
    if-eqz p3, :cond_0

    const-string v0, "com.android.email.intent.action.REPLY_ALL"

    :goto_0
    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 235
    return-void

    .line 234
    :cond_0
    const-string v0, "com.android.email.intent.action.REPLY"

    goto :goto_0
.end method

.method private addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "address"

    .prologue
    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    .line 761
    return-void
.end method

.method private addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/emailcommon/mail/Address;)V
    .locals 5
    .parameter "view"
    .parameter "addresses"

    .prologue
    .line 742
    if-nez p2, :cond_1

    .line 748
    :cond_0
    return-void

    .line 745
    :cond_1
    move-object v1, p2

    .local v1, arr$:[Lcom/android/emailcommon/mail/Address;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 746
    .local v0, address:Lcom/android/emailcommon/mail/Address;
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    .line 745
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "addresses"

    .prologue
    .line 751
    if-nez p2, :cond_1

    .line 757
    :cond_0
    return-void

    .line 754
    :cond_1
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 755
    .local v3, oneAddress:Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    .line 754
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1164
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    const-wide/32 v2, 0x500000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1165
    const v0, 0x7f08007b

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1187
    :goto_0
    return-void

    .line 1170
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040022

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 1172
    const v0, 0x7f0f0072

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1173
    const v1, 0x7f0f0071

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 1174
    const v2, 0x7f0f0073

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1176
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1177
    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-static {p0, v4, v5}, Lcom/android/email/UiUtilities;->formatSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1178
    if-eqz p2, :cond_1

    .line 1179
    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1180
    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 1184
    :goto_1
    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1185
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1186
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateAttachmentContainer()V

    goto :goto_0

    .line 1182
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method private addAttachmentFromSendIntent(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 1203
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 1204
    .local v0, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 1205
    .local v1, mimeType:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_SEND_INTENT_TYPES:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1207
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Z)V

    .line 1209
    :cond_0
    return-void
.end method

.method private addAttachmentFromUri(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 1195
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Z)V

    .line 1196
    return-void
.end method

.method private decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1477
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private displayQuotedText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1485
    if-nez p2, :cond_1

    const/4 v0, 0x1

    .line 1486
    :goto_0
    if-eqz v0, :cond_2

    move-object v1, p1

    .line 1487
    :goto_1
    if-eqz v1, :cond_0

    .line 1488
    if-eqz v0, :cond_3

    invoke-static {v1}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1492
    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1493
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1494
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    const-string v1, "email://"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 1485
    goto :goto_0

    :cond_2
    move-object v1, p2

    .line 1486
    goto :goto_1

    :cond_3
    move-object v2, v1

    .line 1488
    goto :goto_2
.end method

.method private getAddresses(Landroid/widget/TextView;)[Lcom/android/emailcommon/mail/Address;
    .locals 2
    .parameter "view"

    .prologue
    .line 769
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 770
    .local v0, addresses:[Lcom/android/emailcommon/mail/Address;
    return-object v0
.end method

.method private getAttachmentsFromUI()[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 4

    .prologue
    .line 883
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 884
    .local v1, count:I
    new-array v0, v1, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 885
    .local v0, attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 886
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    aput-object v3, v0, v2

    .line 885
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 888
    :cond_0
    return-object v0
.end method

.method private static getBaseIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 171
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageCompose;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    const-string v1, "from_within_app"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 173
    return-object v0
.end method

.method public static getMessageComposeIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 181
    invoke-static {p0}, Lcom/android/email/activity/MessageCompose;->getBaseIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 182
    .local v0, i:Landroid/content/Intent;
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 183
    return-object v0
.end method

.method private getOrCreateDraftId()J
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 897
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    monitor-enter v1

    .line 898
    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 899
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    monitor-exit v1

    move-wide v1, v2

    .line 908
    :goto_0
    return-wide v1

    .line 902
    :cond_0
    iget-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    if-nez v2, :cond_1

    .line 903
    const-wide/16 v2, -0x1

    monitor-exit v1

    move-wide v1, v2

    goto :goto_0

    .line 905
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getAttachmentsFromUI()[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 906
    .local v0, attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    array-length v4, v0

    if-lez v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/email/activity/MessageCompose;->updateMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;ZZ)V

    .line 907
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/android/email/Controller;->saveToMailbox(Lcom/android/emailcommon/provider/EmailContent$Message;I)V

    .line 908
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    monitor-exit v1

    move-wide v1, v2

    goto :goto_0

    :cond_2
    move v4, v6

    .line 906
    goto :goto_1

    .line 909
    .end local v0           #attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getPackedAddresses(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 2
    .parameter "view"

    .prologue
    .line 764
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 765
    .local v0, addresses:[Lcom/android/emailcommon/mail/Address;
    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getUpdateContentValues(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;
    .locals 4
    .parameter "message"

    .prologue
    .line 799
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 800
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "timeStamp"

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 801
    const-string v1, "fromList"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    const-string v1, "toList"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const-string v1, "ccList"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const-string v1, "bccList"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const-string v1, "subject"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const-string v1, "displayName"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const-string v1, "flagRead"

    iget-boolean v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 808
    const-string v1, "flagLoaded"

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 809
    const-string v1, "flagAttachment"

    iget-boolean v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 810
    const-string v1, "flags"

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 811
    return-object v0
.end method

.method private handleCommand(I)Z
    .locals 2
    .parameter "viewId"

    .prologue
    const/4 v1, 0x1

    .line 1278
    sparse-switch p1, :sswitch_data_0

    .line 1302
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1280
    :sswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onActionBarHomePressed()V

    move v0, v1

    .line 1281
    goto :goto_0

    .line 1283
    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onSend()V

    move v0, v1

    .line 1284
    goto :goto_0

    .line 1286
    :sswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onSave()V

    move v0, v1

    .line 1287
    goto :goto_0

    .line 1289
    :sswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onDiscard()V

    move v0, v1

    .line 1290
    goto :goto_0

    .line 1293
    :sswitch_4
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIncludeQuotedTextCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    move v0, v1

    .line 1294
    goto :goto_0

    .line 1296
    :sswitch_5
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->showCcBccFields()V

    move v0, v1

    .line 1297
    goto :goto_0

    .line 1299
    :sswitch_6
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onAddAttachment()V

    move v0, v1

    .line 1300
    goto :goto_0

    .line 1278
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0f0068 -> :sswitch_4
        0x7f0f006a -> :sswitch_5
        0x7f0f006b -> :sswitch_6
        0x7f0f0092 -> :sswitch_2
        0x7f0f00da -> :sswitch_1
        0x7f0f00db -> :sswitch_3
    .end sparse-switch
.end method

.method private includeQuotedText()Z
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIncludeQuotedTextCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method private initViews()V
    .locals 11

    .prologue
    const v10, 0x7f0f0063

    const v9, 0x7f0f0062

    const v8, 0x7f0f0060

    const v7, 0x7f0f0003

    const/4 v6, 0x0

    .line 474
    const v4, 0x7f0f005f

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/email/activity/MessageCompose;->mFromView:Landroid/widget/TextView;

    .line 475
    invoke-virtual {p0, v8}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    .line 476
    invoke-virtual {p0, v9}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    .line 477
    invoke-virtual {p0, v10}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    .line 478
    const v4, 0x7f0f0061

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcBccContainer:Landroid/view/View;

    .line 479
    invoke-virtual {p0, v7}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    .line 480
    const v4, 0x7f0f0066

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    .line 481
    const v4, 0x7f0f0064

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    .line 482
    const v4, 0x7f0f0065

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentContainer:Landroid/view/View;

    .line 483
    const v4, 0x7f0f0067

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    .line 484
    const v4, 0x7f0f0068

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/email/activity/MessageCompose;->mIncludeQuotedTextCheckBox:Landroid/widget/CheckBox;

    .line 485
    const v4, 0x7f0f0069

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    iput-object v4, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    .line 487
    new-instance v3, Lcom/android/email/activity/MessageCompose$2;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageCompose$2;-><init>(Lcom/android/email/activity/MessageCompose;)V

    .line 505
    .local v3, watcher:Landroid/text/TextWatcher;
    new-instance v1, Lcom/android/email/activity/MessageCompose$3;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$3;-><init>(Lcom/android/email/activity/MessageCompose;)V

    .line 550
    .local v1, recipientFilter:Landroid/text/InputFilter;
    const/4 v4, 0x1

    new-array v2, v4, [Landroid/text/InputFilter;

    aput-object v1, v2, v6

    .line 552
    .local v2, recipientFilters:[Landroid/text/InputFilter;
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4, v3}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 553
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4, v3}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 554
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4, v3}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 555
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 556
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 559
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4, v2}, Landroid/widget/MultiAutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 560
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4, v2}, Landroid/widget/MultiAutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 561
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4, v2}, Landroid/widget/MultiAutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 567
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 568
    invoke-direct {p0, v6, v6}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    .line 570
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mIncludeQuotedTextCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    new-instance v0, Lcom/android/email/EmailAddressValidator;

    invoke-direct {v0}, Lcom/android/email/EmailAddressValidator;-><init>()V

    .line 574
    .local v0, addressValidator:Lcom/android/email/EmailAddressValidator;
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setupAddressAdapters()V

    .line 575
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 576
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v5, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v5}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 577
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4, v0}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 579
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 580
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v5, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v5}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 581
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4, v0}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 583
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 584
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v5, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v5}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 585
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4, v0}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 587
    const v4, 0x7f0f006a

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    const v4, 0x7f0f006b

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    const v4, 0x7f0f006c

    invoke-virtual {p0, v4, v8}, Lcom/android/email/activity/MessageCompose;->setFocusShifter(II)V

    .line 591
    const v4, 0x7f0f006d

    invoke-virtual {p0, v4, v9}, Lcom/android/email/activity/MessageCompose;->setFocusShifter(II)V

    .line 592
    const v4, 0x7f0f006e

    invoke-virtual {p0, v4, v10}, Lcom/android/email/activity/MessageCompose;->setFocusShifter(II)V

    .line 593
    const v4, 0x7f0f006f

    invoke-virtual {p0, v4, v7}, Lcom/android/email/activity/MessageCompose;->setFocusShifter(II)V

    .line 594
    const v4, 0x7f0f0070

    const v5, 0x7f0f0066

    invoke-virtual {p0, v4, v5}, Lcom/android/email/activity/MessageCompose;->setFocusShifter(II)V

    .line 596
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 597
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 599
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateAttachmentContainer()V

    .line 600
    return-void
.end method

.method private initializeFromMailTo(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1436
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1437
    const-string v1, "mailto"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1441
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 1442
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1446
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    const-string v2, " ,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1454
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "foo://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1456
    const-string v0, "cc"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1457
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 1459
    const-string v0, "to"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1460
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 1462
    const-string v0, "bcc"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1463
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 1465
    const-string v0, "subject"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1466
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1467
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1470
    :cond_0
    const-string v0, "body"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1471
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1472
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 1474
    :cond_1
    return-void

    .line 1444
    :cond_2
    :try_start_1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 1447
    :catch_0
    move-exception v0

    .line 1448
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " while decoding \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1472
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private isOpenedFromWithinApp()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 450
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 451
    .local v0, i:Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v1, "from_within_app"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 11
    .parameter

    .prologue
    const-wide/16 v9, 0x0

    const/4 v3, 0x0

    .line 1117
    const-wide/16 v6, -0x1

    .line 1118
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1121
    invoke-static {p0, p1}, Lcom/android/emailcommon/utility/Utility;->getContentFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 1123
    sget-object v2, Lcom/android/email/activity/MessageCompose;->ATTACHMENT_META_SIZE_PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1125
    if-eqz v0, :cond_3

    .line 1127
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1128
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 1131
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-wide v0, v1

    .line 1136
    :goto_1
    cmp-long v2, v0, v9

    if-gez v2, :cond_1

    .line 1138
    const-string v2, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1139
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1140
    if-eqz v2, :cond_0

    .line 1141
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1142
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 1146
    :cond_0
    cmp-long v2, v0, v9

    if-gtz v2, :cond_1

    .line 1150
    const-wide/32 v0, 0x500001

    .line 1154
    :cond_1
    new-instance v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 1155
    iput-object v8, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 1156
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 1157
    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 1158
    invoke-static {p0, p1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->inferMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 1159
    return-object v2

    .line 1131
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2
    move-wide v1, v6

    goto :goto_0

    :cond_3
    move-wide v0, v6

    goto :goto_1
.end method

.method private makeDisplayName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "packedTo"
    .parameter "packedCc"
    .parameter "packedBcc"

    .prologue
    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 779
    const/4 v2, 0x0

    .line 780
    .local v2, first:Lcom/android/emailcommon/mail/Address;
    const/4 v6, 0x0

    .line 781
    .local v6, nRecipients:I
    const/4 v8, 0x3

    new-array v1, v8, [Ljava/lang/String;

    aput-object p1, v1, v10

    aput-object p2, v1, v11

    aput-object p3, v1, v9

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v7, v1, v4

    .line 782
    .local v7, packed:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 783
    .local v0, addresses:[Lcom/android/emailcommon/mail/Address;
    array-length v8, v0

    add-int/2addr v6, v8

    .line 784
    if-nez v2, :cond_0

    array-length v8, v0

    if-lez v8, :cond_0

    .line 785
    aget-object v2, v0, v10

    .line 781
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 788
    .end local v0           #addresses:[Lcom/android/emailcommon/mail/Address;
    .end local v7           #packed:Ljava/lang/String;
    :cond_1
    if-nez v6, :cond_2

    .line 789
    const-string v8, ""

    .line 795
    :goto_1
    return-object v8

    .line 791
    :cond_2
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v3

    .line 792
    .local v3, friendly:Ljava/lang/String;
    if-ne v6, v11, :cond_3

    move-object v8, v3

    .line 793
    goto :goto_1

    .line 795
    :cond_3
    const v8, 0x7f08007c

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v10

    sub-int v10, v6, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p0, v8, v9}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method private onActionBarHomePressed()V
    .locals 1

    .prologue
    .line 1306
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 1307
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isOpenedFromWithinApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1313
    :goto_0
    return-void

    .line 1311
    :cond_0
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private onAddAttachment()V
    .locals 3

    .prologue
    .line 1108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1109
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1110
    sget-object v1, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_SEND_UI_TYPES:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1111
    const v1, 0x7f080042

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1114
    return-void
.end method

.method private onDeleteAttachment(Landroid/view/View;)V
    .locals 8
    .parameter "delButtonView"

    .prologue
    const/4 v7, 0x1

    .line 1250
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1251
    .local v1, attachmentView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 1252
    .local v0, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1253
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateAttachmentContainer()V

    .line 1254
    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1258
    new-instance v2, Lcom/android/email/activity/MessageCompose$4;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$4;-><init>(Lcom/android/email/activity/MessageCompose;)V

    new-array v3, v7, [Ljava/lang/Long;

    const/4 v4, 0x0

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageCompose$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1266
    :cond_0
    invoke-direct {p0, v7}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 1267
    return-void
.end method

.method private onDiscard()V
    .locals 3

    .prologue
    .line 1066
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;->newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/DeleteMessageConfirmationDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1067
    return-void
.end method

.method private onSave()V
    .locals 0

    .prologue
    .line 1089
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->saveIfNeeded()V

    .line 1090
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 1091
    return-void
.end method

.method private onSend()V
    .locals 4

    .prologue
    const v3, 0x7f080079

    const/4 v2, 0x1

    .line 1049
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->isAddressAllValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1050
    const v0, 0x7f08007a

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1063
    :goto_0
    return-void

    .line 1052
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getAddresses(Landroid/widget/TextView;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getAddresses(Landroid/widget/TextView;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getAddresses(Landroid/widget/TextView;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 1055
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 1056
    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1059
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->sendOrSaveMessage(Z)V

    .line 1060
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 1061
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    goto :goto_0
.end method

.method private safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;Ljava/util/ArrayList;)Z
    .locals 6
    .parameter "addrs"
    .parameter "ourAddress"
    .parameter "view"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/widget/MultiAutoCompleteTextView;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Address;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1506
    .local p4, addrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    const/4 v0, 0x0

    .line 1507
    .local v0, added:Z
    invoke-static {p1}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    .local v2, arr$:[Lcom/android/emailcommon/mail/Address;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3

    .line 1509
    .local v1, address:Lcom/android/emailcommon/mail/Address;
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1510
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1511
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p3, v5}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    .line 1512
    const/4 v0, 0x1

    .line 1507
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1515
    .end local v1           #address:Lcom/android/emailcommon/mail/Address;
    :cond_1
    return v0
.end method

.method private saveIfNeeded()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1027
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    if-nez v0, :cond_0

    .line 1032
    :goto_0
    return-void

    .line 1030
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 1031
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->sendOrSaveMessage(Z)V

    goto :goto_0
.end method

.method private sendOrSaveMessage(Z)V
    .locals 2
    .parameter "send"

    .prologue
    .line 1016
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    if-nez v0, :cond_0

    .line 1024
    :goto_0
    return-void

    .line 1020
    :cond_0
    sget-object v0, Lcom/android/email/activity/MessageCompose;->sSaveInProgressCondition:Ljava/lang/Object;

    monitor-enter v0

    .line 1021
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/android/email/activity/MessageCompose;->sSaveInProgress:Z

    .line 1022
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1023
    new-instance v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;

    invoke-direct {v0, p0, p1}, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;-><init>(Lcom/android/email/activity/MessageCompose;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1022
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setAccount(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const-wide/16 v3, -0x1

    .line 266
    const-string v2, "account_id"

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 267
    .local v0, accountId:J
    cmp-long v2, v0, v3

    if-nez v2, :cond_0

    .line 268
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    .line 270
    :cond_0
    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    .line 273
    invoke-static {p0}, Lcom/android/email/activity/AccountFolderList;->actionShowAccounts(Landroid/content/Context;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_1
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto :goto_0
.end method

.method private setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 281
    if-nez p1, :cond_0

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 284
    :cond_0
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 285
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/EmailAddressAdapter;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 287
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/EmailAddressAdapter;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 288
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/EmailAddressAdapter;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 289
    return-void
.end method

.method private setDraftNeedsSaving(Z)V
    .locals 0
    .parameter "needsSaving"

    .prologue
    .line 455
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 456
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mSaveEnabled:Z

    .line 457
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->invalidateOptionsMenu()V

    .line 458
    return-void
.end method

.method private setIncludeQuotedText(ZZ)V
    .locals 2
    .parameter "include"
    .parameter "updateNeedsSaving"

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIncludeQuotedTextCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1237
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mIncludeQuotedTextCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1239
    if-eqz p2, :cond_0

    .line 1240
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 1242
    :cond_0
    return-void

    .line 1237
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private setNewMessageFocus()V
    .locals 1

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1659
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    .line 1666
    :goto_0
    return-void

    .line 1660
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1661
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 1663
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1664
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->setMessageContentSelection(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setupAddressAdapters()V
    .locals 1

    .prologue
    .line 606
    new-instance v0, Lcom/android/email/EmailAddressAdapter;

    invoke-direct {v0, p0}, Lcom/android/email/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    .line 607
    new-instance v0, Lcom/android/email/EmailAddressAdapter;

    invoke-direct {v0, p0}, Lcom/android/email/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    .line 608
    new-instance v0, Lcom/android/email/EmailAddressAdapter;

    invoke-direct {v0, p0}, Lcom/android/email/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    .line 609
    return-void
.end method

.method private showCcBccFields()V
    .locals 2

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1101
    const v0, 0x7f0f006a

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1102
    return-void
.end method

.method private showCcBccFieldsIfFilled()V
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1095
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->showCcBccFields()V

    .line 1097
    :cond_1
    return-void
.end method

.method private static startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .parameter "context"
    .parameter "action"
    .parameter "messageId"

    .prologue
    .line 259
    invoke-static {p0}, Lcom/android/email/activity/MessageCompose;->getBaseIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 260
    .local v0, i:Landroid/content/Intent;
    const-string v1, "message_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 261
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 263
    return-void
.end method

.method private updateAttachmentContainer()V
    .locals 2

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1192
    return-void

    .line 1190
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;ZZ)V
    .locals 10
    .parameter "message"
    .parameter "account"
    .parameter "hasAttachments"
    .parameter "sending"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 825
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 826
    :cond_0
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->generateMessageId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    .line 828
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    .line 829
    new-instance v4, Lcom/android/emailcommon/mail/Address;

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Address;->pack()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 830
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 831
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    .line 832
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    .line 833
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 834
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 835
    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    iput-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 836
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/email/activity/MessageCompose;->makeDisplayName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 837
    iput-boolean v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 838
    iput v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 839
    iput-boolean p3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 842
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 844
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    iput-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    .line 846
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 847
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 848
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/emailcommon/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 849
    .local v1, fromAsString:Ljava/lang/String;
    const-string v4, "com.android.email.intent.action.FORWARD"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 850
    iget v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 851
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 852
    .local v2, subject:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/emailcommon/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 853
    .local v3, to:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/emailcommon/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, cc:Ljava/lang/String;
    const v4, 0x7f080075

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v9

    aput-object v1, v5, v7

    const/4 v6, 0x2

    if-eqz v3, :cond_4

    move-object v7, v3

    :goto_0
    aput-object v7, v5, v6

    const/4 v6, 0x3

    if-eqz v0, :cond_5

    move-object v7, v0

    :goto_1
    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    .line 864
    .end local v0           #cc:Ljava/lang/String;
    .end local v1           #fromAsString:Ljava/lang/String;
    .end local v2           #subject:Ljava/lang/String;
    .end local v3           #to:Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->includeQuotedText()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 865
    iget v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const v5, -0x20001

    and-int/2addr v4, v5

    iput v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 880
    :cond_3
    :goto_3
    return-void

    .line 854
    .restart local v0       #cc:Ljava/lang/String;
    .restart local v1       #fromAsString:Ljava/lang/String;
    .restart local v2       #subject:Ljava/lang/String;
    .restart local v3       #to:Ljava/lang/String;
    :cond_4
    const-string v7, ""

    goto :goto_0

    :cond_5
    const-string v7, ""

    goto :goto_1

    .line 858
    .end local v0           #cc:Ljava/lang/String;
    .end local v2           #subject:Ljava/lang/String;
    .end local v3           #to:Ljava/lang/String;
    :cond_6
    iget v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 859
    const v4, 0x7f080076

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v9

    invoke-virtual {p0, v4, v5}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    goto :goto_2

    .line 867
    .end local v1           #fromAsString:Ljava/lang/String;
    :cond_7
    iget v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v5, 0x2

    or-int/2addr v4, v5

    iput v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 868
    if-eqz p4, :cond_3

    .line 873
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    .line 874
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 875
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 876
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    .line 877
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v5, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v5, v5, -0x4

    iput v5, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    goto :goto_3
.end method


# virtual methods
.method initFromIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 1361
    const-string v0, "android.intent.extra.EMAIL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1362
    if-eqz v0, :cond_0

    .line 1363
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v1, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 1365
    :cond_0
    const-string v0, "android.intent.extra.CC"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1366
    if-eqz v0, :cond_1

    .line 1367
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v1, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 1369
    :cond_1
    const-string v0, "android.intent.extra.BCC"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1370
    if-eqz v0, :cond_2

    .line 1371
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v1, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 1373
    :cond_2
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1374
    if-eqz v0, :cond_3

    .line 1375
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1382
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1383
    if-eqz v0, :cond_4

    .line 1384
    const-string v1, "mailto"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1385
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->initializeFromMailTo(Ljava/lang/String;)V

    .line 1395
    :cond_4
    :goto_0
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1396
    if-eqz v0, :cond_5

    .line 1397
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 1401
    :cond_5
    const-string v0, "android.intent.action.SEND"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1402
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1403
    if-eqz v0, :cond_6

    .line 1404
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachmentFromSendIntent(Landroid/net/Uri;)V

    .line 1408
    :cond_6
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1410
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1411
    if-eqz v0, :cond_9

    .line 1412
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 1413
    check-cast v0, Landroid/net/Uri;

    .line 1414
    if-eqz v0, :cond_7

    .line 1415
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachmentFromSendIntent(Landroid/net/Uri;)V

    goto :goto_1

    .line 1387
    :cond_8
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 1388
    if-eqz v0, :cond_4

    .line 1389
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    goto :goto_0

    .line 1422
    :cond_9
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->showCcBccFieldsIfFilled()V

    .line 1423
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setNewMessageFocus()V

    .line 1424
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 1425
    return-void
.end method

.method isAddressAllValid()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1038
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    aput-object v1, v0, v6

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    aput-object v2, v0, v1

    array-length v1, v0

    move v2, v5

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1039
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1040
    invoke-static {v4}, Lcom/android/emailcommon/mail/Address;->isAllValid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1041
    const v0, 0x7f08007a

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    move v0, v5

    .line 1045
    :goto_1
    return v0

    .line 1038
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v6

    .line 1045
    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1213
    if-nez p3, :cond_0

    .line 1218
    :goto_0
    return-void

    .line 1216
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachmentFromUri(Landroid/net/Uri;)V

    .line 1217
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1225
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->handleCommand(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1233
    :goto_0
    return-void

    .line 1228
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1230
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->onDeleteAttachment(Landroid/view/View;)V

    goto :goto_0

    .line 1228
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0071
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x4

    const/4 v10, 0x0

    const-wide/16 v8, -0x1

    const/4 v7, 0x1

    .line 293
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 294
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 295
    const v5, 0x7f040021

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->setContentView(I)V

    .line 297
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    .line 298
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->initViews()V

    .line 299
    invoke-direct {p0, v10}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 301
    const-wide/16 v0, -0x1

    .line 302
    .local v0, draftId:J
    if-eqz p1, :cond_0

    .line 304
    const-string v5, "com.android.email.activity.MessageCompose.stateKeySourceMessageProced"

    invoke-virtual {p1, v5, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    .line 306
    const-string v5, "com.android.email.activity.MessageCompose.draftId"

    invoke-virtual {p1, v5, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 313
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 314
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    .line 316
    cmp-long v5, v0, v8

    if-eqz v5, :cond_1

    .line 320
    const-string v5, "com.android.email.intent.action.EDIT_DRAFT"

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    .line 321
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    .line 325
    :cond_1
    const-string v5, "android.intent.action.VIEW"

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "android.intent.action.SENDTO"

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "android.intent.action.SEND"

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "android.intent.action.SEND_MULTIPLE"

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 329
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->setAccount(Landroid/content/Intent;)V

    .line 331
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->initFromIntent(Landroid/content/Intent;)V

    .line 332
    invoke-direct {p0, v7}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 333
    iput-boolean v7, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    .line 334
    iput-boolean v7, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    .line 350
    :goto_0
    const-string v5, "com.android.email.intent.action.REPLY"

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "com.android.email.intent.action.REPLY_ALL"

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "com.android.email.intent.action.FORWARD"

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 360
    :cond_3
    return-void

    .line 337
    :cond_4
    cmp-long v5, v0, v8

    if-eqz v5, :cond_5

    move-wide v3, v0

    .line 338
    .local v3, messageId:J
    :goto_1
    cmp-long v5, v3, v8

    if-eqz v5, :cond_6

    .line 339
    new-instance v5, Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    invoke-direct {v5, p0, v3, v4}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageCompose;J)V

    new-array v6, v10, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    .line 347
    :goto_2
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_3
    invoke-virtual {p0, v11, v5}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_0

    .line 337
    .end local v3           #messageId:J
    :cond_5
    const-string v5, "message_id"

    invoke-virtual {v2, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    move-wide v3, v5

    goto :goto_1

    .line 341
    .restart local v3       #messageId:J
    :cond_6
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->setAccount(Landroid/content/Intent;)V

    .line 344
    iput-boolean v7, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    .line 345
    iput-boolean v7, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    goto :goto_2

    :cond_7
    move-object v5, v11

    .line 347
    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 1317
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1318
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1319
    const/4 v0, 0x1

    return v0
.end method

.method public onDeleteMessageConfirmationDialogOkPressed()V
    .locals 5

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->deleteMessage(JJ)V

    .line 1083
    :cond_0
    const v0, 0x7f0800a8

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/app/Activity;I)V

    .line 1084
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 1085
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 1086
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 393
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 394
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 395
    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    .line 397
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 398
    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTask:Landroid/os/AsyncTask;

    .line 399
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 400
    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    .line 402
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0}, Lcom/android/email/EmailAddressAdapter;->close()V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0}, Lcom/android/email/EmailAddressAdapter;->close()V

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_2

    .line 409
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0}, Lcom/android/email/EmailAddressAdapter;->close()V

    .line 411
    :cond_2
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "focused"

    .prologue
    .line 733
    if-eqz p2, :cond_0

    .line 734
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 736
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->setMessageContentSelection(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 734
    :pswitch_data_0
    .packed-switch 0x7f0f0066
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1271
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->handleCommand(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1272
    const/4 v0, 0x1

    .line 1274
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 383
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 384
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->saveIfNeeded()V

    .line 385
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 1324
    const v0, 0x7f0f0092

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mSaveEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1325
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 435
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 436
    const-string v0, "com.android.email.activity.MessageCompose.ccShown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->showCcBccFields()V

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    const-string v1, "com.android.email.activity.MessageCompose.quotedTextShown"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    const-string v1, "com.android.email.activity.MessageCompose.quotedTextShown"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 443
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 444
    return-void

    :cond_1
    move v1, v3

    .line 439
    goto :goto_0

    :cond_2
    move v1, v3

    .line 441
    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 371
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 374
    invoke-static {}, Lcom/android/email/Email;->getNotifyUiAccountsChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 376
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 379
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "outState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 422
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 423
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getOrCreateDraftId()J

    move-result-wide v0

    .line 424
    .local v0, draftId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 425
    const-string v2, "com.android.email.activity.MessageCompose.draftId"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 427
    :cond_0
    const-string v2, "com.android.email.activity.MessageCompose.ccShown"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mCcBccContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    :goto_0
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 428
    const-string v2, "com.android.email.activity.MessageCompose.quotedTextShown"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v5

    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 430
    const-string v2, "com.android.email.activity.MessageCompose.stateKeySourceMessageProced"

    iget-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 431
    return-void

    :cond_1
    move v3, v4

    .line 427
    goto :goto_0

    :cond_2
    move v3, v4

    .line 428
    goto :goto_1
.end method

.method processSourceMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1581
    invoke-direct {p0, v9}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 1582
    iget-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 1583
    const-string v0, "com.android.email.intent.action.REPLY"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.email.intent.action.REPLY_ALL"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1584
    :cond_0
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    const-string v0, "com.android.email.intent.action.REPLY_ALL"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageCompose;->setupAddressViews(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/widget/MultiAutoCompleteTextView;Landroid/widget/MultiAutoCompleteTextView;Z)V

    .line 1586
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "re:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1587
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Re: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1591
    :goto_0
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->displayQuotedText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    invoke-direct {p0, v9, v8}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    .line 1593
    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, v7, v0}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 1617
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->showCcBccFieldsIfFilled()V

    .line 1618
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setNewMessageFocus()V

    .line 1619
    return-void

    .line 1589
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move-object v0, v7

    .line 1593
    goto :goto_1

    .line 1594
    :cond_4
    const-string v0, "com.android.email.intent.action.FORWARD"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1595
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fwd:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fwd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1597
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->displayQuotedText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    invoke-direct {p0, v9, v8}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    .line 1599
    if-eqz p2, :cond_6

    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_4
    invoke-virtual {p0, v7, v0}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v1, v6

    .line 1595
    goto :goto_3

    :cond_6
    move-object v0, v7

    .line 1599
    goto :goto_4

    .line 1600
    :cond_7
    const-string v0, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1601
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1602
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/emailcommon/mail/Address;)V

    .line 1603
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 1604
    array-length v1, v0

    if-lez v1, :cond_8

    .line 1605
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v1, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/emailcommon/mail/Address;)V

    .line 1607
    :cond_8
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 1608
    array-length v1, v0

    if-lez v1, :cond_9

    .line 1609
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v1, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/emailcommon/mail/Address;)V

    .line 1612
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1615
    invoke-direct {p0, v8}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    goto/16 :goto_2
.end method

.method processSourceMessageGuarded(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 4
    .parameter "message"
    .parameter "account"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1556
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    if-nez v0, :cond_0

    .line 1557
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->processSourceMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1558
    iput-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    .line 1567
    :cond_0
    const-string v0, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1568
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->displayQuotedText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v1, 0x2

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    move v0, v3

    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    .line 1572
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1569
    goto :goto_0
.end method

.method public setFocusShifter(II)V
    .locals 2
    .parameter "fromViewId"
    .parameter "targetViewId"

    .prologue
    .line 461
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 463
    .local v0, label:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 464
    new-instance v1, Lcom/android/email/activity/MessageCompose$1;

    invoke-direct {v1, p0, p2}, Lcom/android/email/activity/MessageCompose$1;-><init>(Lcom/android/email/activity/MessageCompose;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    :cond_0
    return-void
.end method

.method setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1334
    const/4 v0, 0x0

    .line 1335
    if-eqz p1, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 1337
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1339
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1340
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    .line 1341
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 1343
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 1345
    :cond_3
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 365
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 366
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    .line 367
    return-void
.end method

.method setMessageContentSelection(Ljava/lang/String;)V
    .locals 7
    .parameter "signature"

    .prologue
    .line 1627
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v2

    .line 1628
    .local v2, selection:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1629
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1630
    .local v3, signatureLength:I
    sub-int v0, v2, v3

    .line 1631
    .local v0, estimatedSelection:I
    if-ltz v0, :cond_1

    .line 1632
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 1633
    .local v4, text:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 1635
    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    add-int v5, v0, v1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1636
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1638
    :cond_0
    if-ne v1, v3, :cond_1

    .line 1639
    move v2, v0

    .line 1640
    :goto_1
    if-lez v2, :cond_1

    const/4 v5, 0x1

    sub-int v5, v2, v5

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1

    .line 1641
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1646
    .end local v0           #estimatedSelection:I
    .end local v1           #i:I
    .end local v3           #signatureLength:I
    .end local v4           #text:Ljava/lang/CharSequence;
    :cond_1
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v5, v2, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 1647
    return-void
.end method

.method setupAddressViews(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/widget/MultiAutoCompleteTextView;Landroid/widget/MultiAutoCompleteTextView;Z)V
    .locals 9
    .parameter "message"
    .parameter "account"
    .parameter "toView"
    .parameter "ccView"
    .parameter "replyAll"

    .prologue
    .line 1533
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v6

    .line 1534
    .local v6, replyToAddresses:[Lcom/android/emailcommon/mail/Address;
    array-length v7, v6

    if-nez v7, :cond_0

    .line 1535
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v6

    .line 1537
    :cond_0
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v7, v6}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/emailcommon/mail/Address;)V

    .line 1539
    if-eqz p5, :cond_2

    .line 1541
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1542
    .local v1, allAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    iget-object v5, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 1544
    .local v5, ourAddress:Ljava/lang/String;
    move-object v2, v6

    .local v2, arr$:[Lcom/android/emailcommon/mail/Address;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 1545
    .local v0, address:Lcom/android/emailcommon/mail/Address;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1544
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1548
    .end local v0           #address:Lcom/android/emailcommon/mail/Address;
    :cond_1
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v7, v5, v8, v1}, Lcom/android/email/activity/MessageCompose;->safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;Ljava/util/ArrayList;)Z

    .line 1549
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v7, v5, v8, v1}, Lcom/android/email/activity/MessageCompose;->safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;Ljava/util/ArrayList;)Z

    .line 1551
    .end local v1           #allAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    .end local v2           #arr$:[Lcom/android/emailcommon/mail/Address;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #ourAddress:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->showCcBccFieldsIfFilled()V

    .line 1552
    return-void
.end method
