.class public Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;
.super Ljava/lang/Object;
.source "CalendarSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;
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
    .line 845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 846
    iput p1, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->type:I

    .line 847
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 801
    iget v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->type:I

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 801
    iput p1, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->type:I

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)Lcom/google/wireless/gdata2/data/Entry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 801
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 801
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 801
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 801
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public static newDelete(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;
    .locals 3
    .parameter "url"
    .parameter "etag"

    .prologue
    .line 835
    if-nez p0, :cond_0

    .line 836
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null url"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 838
    :cond_0
    new-instance v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;-><init>(I)V

    .line 839
    .local v0, operation:Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;
    iput-object p0, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->url:Ljava/lang/String;

    .line 840
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;

    .line 841
    iput-object p1, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->etag:Ljava/lang/String;

    .line 842
    return-object v0
.end method

.method public static newInsert(Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;
    .locals 3
    .parameter "url"
    .parameter "entry"

    .prologue
    .line 811
    if-nez p0, :cond_0

    .line 812
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null url"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 814
    :cond_0
    new-instance v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;-><init>(I)V

    .line 815
    .local v0, operation:Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;
    iput-object p0, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->url:Ljava/lang/String;

    .line 816
    iput-object p1, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;

    .line 817
    return-object v0
.end method

.method public static newUpdate(Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;
    .locals 3
    .parameter "editUrl"
    .parameter "entry"

    .prologue
    .line 825
    if-nez p0, :cond_0

    .line 826
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null url"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 828
    :cond_0
    new-instance v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;-><init>(I)V

    .line 829
    .local v0, operation:Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;
    iput-object p1, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->entry:Lcom/google/wireless/gdata2/data/Entry;

    .line 830
    iput-object p0, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->url:Ljava/lang/String;

    .line 831
    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 821
    iget v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$Operation;->type:I

    return v0
.end method
