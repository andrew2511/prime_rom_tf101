.class Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;
.super Ljava/lang/Object;
.source "AttachmentDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/AttachmentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccountManagerStub"
.end annotation


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private mNumberOfAccounts:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    if-eqz p1, :cond_0

    .line 128
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;->mAccountManager:Landroid/accounts/AccountManager;

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;->mAccountManager:Landroid/accounts/AccountManager;

    goto :goto_0
.end method


# virtual methods
.method getNumberOfAccounts()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;->mAccountManager:Landroid/accounts/AccountManager;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    .line 138
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;->mNumberOfAccounts:I

    goto :goto_0
.end method

.method setNumberOfAccounts(I)V
    .locals 0
    .parameter "numberOfAccounts"

    .prologue
    .line 143
    iput p1, p0, Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;->mNumberOfAccounts:I

    .line 144
    return-void
.end method
