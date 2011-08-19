.class public Lcom/amazon/kcp/redding/AlertActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "AlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/redding/AlertActivity$8;,
        Lcom/amazon/kcp/redding/AlertActivity$AlertType;
    }
.end annotation


# static fields
.field public static final ALERT_BOOK_ASIN:Ljava/lang/String; = "alert_book_asin"

.field public static final ALERT_BOOK_IS_SAMPLE:Ljava/lang/String; = "alert_book_is_sample"

.field public static final ALERT_LINK_TITLE:Ljava/lang/String; = "alert_link_title"

.field public static final ALERT_LINK_URL:Ljava/lang/String; = "alert_link_url"

.field public static final ALERT_MESSAGE:Ljava/lang/String; = "alert_message"

.field public static final ALERT_SETTINGS_ACTION:Ljava/lang/String; = "alert_settings_action"

.field public static final ALERT_TITLE:Ljava/lang/String; = "alert_title"

.field public static final ALERT_TYPE:Ljava/lang/String; = "alert_type"

.field private static final THE_DIALOG_ID:I = 0x1


# instance fields
.field private asin:Ljava/lang/String;

.field private isSample:Z

.field private linkTitle:Ljava/lang/String;

.field private linkUrl:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private settingsAction:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Lcom/amazon/kcp/redding/AlertActivity$AlertType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/redding/AlertActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity;->linkUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/redding/AlertActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity;->settingsAction:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected isCrashBitEnabled()Z
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 118
    const-string v0, "alert_title"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity;->title:Ljava/lang/String;

    .line 119
    const-string v0, "alert_message"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity;->message:Ljava/lang/String;

    .line 120
    const-string v0, "alert_type"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    iput-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity;->type:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    .line 122
    sget-object v0, Lcom/amazon/kcp/redding/AlertActivity$8;->$SwitchMap$com$amazon$kcp$redding$AlertActivity$AlertType:[I

    iget-object v2, p0, Lcom/amazon/kcp/redding/AlertActivity;->type:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    invoke-virtual {v2}, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 138
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown alert type or alert type not set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :pswitch_0
    const-string v0, "alert_link_title"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity;->linkTitle:Ljava/lang/String;

    .line 128
    const-string v0, "alert_link_url"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity;->linkUrl:Ljava/lang/String;

    .line 142
    :goto_0
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/redding/AlertActivity;->showDialog(I)V

    .line 143
    return-void

    .line 131
    :pswitch_2
    const-string v0, "alert_settings_action"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity;->settingsAction:Ljava/lang/String;

    goto :goto_0

    .line 134
    :pswitch_3
    const-string v0, "alert_book_asin"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity;->asin:Ljava/lang/String;

    .line 135
    const-string v0, "alert_book_is_sample"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/redding/AlertActivity;->isSample:Z

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0b000d

    .line 148
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 150
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    .line 153
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 155
    iget-object v1, p0, Lcom/amazon/kcp/redding/AlertActivity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 156
    iget-object v1, p0, Lcom/amazon/kcp/redding/AlertActivity;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 158
    sget-object v1, Lcom/amazon/kcp/redding/AlertActivity$8;->$SwitchMap$com$amazon$kcp$redding$AlertActivity$AlertType:[I

    iget-object v2, p0, Lcom/amazon/kcp/redding/AlertActivity;->type:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    invoke-virtual {v2}, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 236
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 161
    :pswitch_0
    const v1, 0x7f0b000b

    new-instance v2, Lcom/amazon/kcp/redding/AlertActivity$1;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/redding/AlertActivity$1;-><init>(Lcom/amazon/kcp/redding/AlertActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 172
    :pswitch_1
    iget-object v1, p0, Lcom/amazon/kcp/redding/AlertActivity;->linkTitle:Ljava/lang/String;

    new-instance v2, Lcom/amazon/kcp/redding/AlertActivity$2;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/redding/AlertActivity$2;-><init>(Lcom/amazon/kcp/redding/AlertActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 181
    new-instance v1, Lcom/amazon/kcp/redding/AlertActivity$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/redding/AlertActivity$3;-><init>(Lcom/amazon/kcp/redding/AlertActivity;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 192
    :pswitch_2
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/redding/AlertActivity$4;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/redding/AlertActivity$4;-><init>(Lcom/amazon/kcp/redding/AlertActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 201
    new-instance v1, Lcom/amazon/kcp/redding/AlertActivity$5;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/redding/AlertActivity$5;-><init>(Lcom/amazon/kcp/redding/AlertActivity;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 211
    :pswitch_3
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/AlertActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/redding/AlertActivity;->asin:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/amazon/kcp/redding/AlertActivity;->isSample:Z

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/library/models/CLibrary;->getBook(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v1

    .line 213
    if-eqz v1, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/amazon/kcp/redding/AlertActivity$6;

    invoke-direct {v3, p0, v1}, Lcom/amazon/kcp/redding/AlertActivity$6;-><init>(Lcom/amazon/kcp/redding/AlertActivity;Lcom/amazon/kcp/library/models/ILocalBookItem;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 225
    :cond_1
    new-instance v1, Lcom/amazon/kcp/redding/AlertActivity$7;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/redding/AlertActivity$7;-><init>(Lcom/amazon/kcp/redding/AlertActivity;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
