.class public final Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/proto/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerReply"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;,
        Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;


# instance fields
.field private error_:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

.field private hasError:Z

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2068
    new-instance v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;-><init>(Z)V

    sput-object v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->defaultInstance:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    .line 2069
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification;->internalForceInit()V

    .line 2070
    sget-object v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->defaultInstance:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->initFields()V

    .line 2071
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1780
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1855
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->memoizedSerializedSize:I

    .line 1781
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->initFields()V

    .line 1782
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/model/proto/Notification$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1777
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 1783
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1855
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->memoizedSerializedSize:I

    .line 1783
    return-void
.end method

.method static synthetic access$4702(Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1777
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->hasError:Z

    return p1
.end method

.method static synthetic access$4802(Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;)Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1777
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->error_:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;
    .locals 1

    .prologue
    .line 1787
    sget-object v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->defaultInstance:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1841
    sget-object v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->BAD_TOKEN:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->error_:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    .line 1842
    return-void
.end method

.method public static newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;
    .locals 1

    .prologue
    .line 1936
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->access$4500()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1894
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;->access$4400(Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$Builder;)Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getError()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;
    .locals 1

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->error_:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1857
    iget v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->memoizedSerializedSize:I

    .line 1858
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1866
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 1860
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 1861
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->hasError()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1862
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->getError()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1865
    :cond_1
    iput v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->memoizedSerializedSize:I

    move v1, v0

    .line 1866
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 1837
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->hasError:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1844
    const/4 v0, 0x1

    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1849
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->getSerializedSize()I

    .line 1850
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1851
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->getError()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1853
    :cond_0
    return-void
.end method
