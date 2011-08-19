.class public Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;
.super Ljava/lang/Object;
.source "ContactsSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Operation"
.end annotation


# instance fields
.field private entry:Lcom/google/wireless/gdata2/data/Entry;

.field private etag:Ljava/lang/String;

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 853
    iput p1, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->type:I

    .line 854
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)Lcom/google/wireless/gdata2/data/Entry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 819
    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 819
    iput-object p1, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 819
    iget v0, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->type:I

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 819
    iput p1, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->type:I

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 819
    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 819
    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public static newDelete(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;
    .locals 2
    .parameter "url"
    .parameter "etag"

    .prologue
    .line 845
    new-instance v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;-><init>(I)V

    .line 846
    .local v0, operation:Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;
    iput-object p0, v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->url:Ljava/lang/String;

    .line 847
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;

    .line 848
    iput-object p1, v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->etag:Ljava/lang/String;

    .line 849
    return-object v0
.end method

.method public static newInsert(Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;
    .locals 2
    .parameter "url"
    .parameter "entry"

    .prologue
    .line 828
    new-instance v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;-><init>(I)V

    .line 829
    .local v0, operation:Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;
    iput-object p0, v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->url:Ljava/lang/String;

    .line 830
    iput-object p1, v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;

    .line 831
    return-object v0
.end method

.method public static newUpdate(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;
    .locals 2
    .parameter "entry"

    .prologue
    .line 838
    new-instance v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;-><init>(I)V

    .line 839
    .local v0, operation:Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;
    iput-object p0, v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;

    .line 840
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->url:Ljava/lang/String;

    .line 841
    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 834
    iget v0, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->type:I

    return v0
.end method
