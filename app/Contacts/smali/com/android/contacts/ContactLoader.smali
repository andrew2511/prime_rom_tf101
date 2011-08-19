.class public Lcom/android/contacts/ContactLoader;
.super Landroid/content/Loader;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactLoader$1;,
        Lcom/android/contacts/ContactLoader$AsyncPhotoLoader;,
        Lcom/android/contacts/ContactLoader$LoadContactTask;,
        Lcom/android/contacts/ContactLoader$GroupQuery;,
        Lcom/android/contacts/ContactLoader$DirectoryQuery;,
        Lcom/android/contacts/ContactLoader$ContactQuery;,
        Lcom/android/contacts/ContactLoader$Result;,
        Lcom/android/contacts/ContactLoader$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/Loader",
        "<",
        "Lcom/android/contacts/ContactLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private mContact:Lcom/android/contacts/ContactLoader$Result;

.field private mDestroyed:Z

.field private mLoadGroupMetaData:Z

.field private mLookupUri:Landroid/net/Uri;

.field private mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter "context"
    .parameter "lookupUri"

    .prologue
    .line 984
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 985
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 0
    .parameter "context"
    .parameter "lookupUri"
    .parameter "loadGroupMetaData"

    .prologue
    .line 988
    invoke-direct {p0, p1}, Landroid/content/Loader;-><init>(Landroid/content/Context;)V

    .line 989
    iput-object p2, p0, Lcom/android/contacts/ContactLoader;->mLookupUri:Landroid/net/Uri;

    .line 990
    iput-boolean p3, p0, Lcom/android/contacts/ContactLoader;->mLoadGroupMetaData:Z

    .line 991
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/ContactLoader;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/contacts/ContactLoader;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/contacts/ContactLoader;->mLookupUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/contacts/ContactLoader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader;->mLoadGroupMetaData:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/ContactLoader;)Landroid/content/Loader$ForceLoadContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/contacts/ContactLoader;Landroid/content/Loader$ForceLoadContentObserver;)Landroid/content/Loader$ForceLoadContentObserver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/contacts/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/contacts/ContactLoader;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/contacts/ContactLoader;->unregisterObserver()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/ContactLoader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/contacts/ContactLoader;)Lcom/android/contacts/ContactLoader$Result;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/contacts/ContactLoader;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;

    return-object p1
.end method

.method private unregisterObserver()V
    .locals 2

    .prologue
    .line 977
    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-eqz v0, :cond_0

    .line 978
    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 979
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 981
    :cond_0
    return-void
.end method


# virtual methods
.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected onForceLoad()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1010
    new-instance v1, Lcom/android/contacts/ContactLoader$LoadContactTask;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/ContactLoader$LoadContactTask;-><init>(Lcom/android/contacts/ContactLoader;Lcom/android/contacts/ContactLoader$1;)V

    .line 1011
    .local v1, task:Lcom/android/contacts/ContactLoader$LoadContactTask;
    move-object v0, v2

    check-cast v0, [Ljava/lang/Void;

    move-object p0, v0

    .end local p0
    invoke-virtual {v1, p0}, Lcom/android/contacts/ContactLoader$LoadContactTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1012
    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 1016
    invoke-direct {p0}, Lcom/android/contacts/ContactLoader;->unregisterObserver()V

    .line 1017
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;

    .line 1018
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader;->mDestroyed:Z

    .line 1019
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactLoader;->deliverResult(Ljava/lang/Object;)V

    .line 1003
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;

    if-nez v0, :cond_2

    .line 1004
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader;->forceLoad()V

    .line 1006
    :cond_2
    return-void
.end method
