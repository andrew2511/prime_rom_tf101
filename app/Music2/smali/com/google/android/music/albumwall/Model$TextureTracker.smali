.class Lcom/google/android/music/albumwall/Model$TextureTracker;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextureTracker"
.end annotation


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method private getStack()Ljava/lang/String;
    .locals 5

    .prologue
    .line 136
    const-string v2, ""

    .line 138
    .local v2, result:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 140
    .local v1, e:Ljava/lang/RuntimeException;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 141
    .local v0, b:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 142
    .local v3, w:Ljava/io/PrintStream;
    invoke-virtual {v1, v3}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 143
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V

    .line 144
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    return-object v2
.end method


# virtual methods
.method public add(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 89
    return-void
.end method

.method public checkEmpty()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public dump()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public remove(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 112
    return-void
.end method

.method public use(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 99
    return-void
.end method
