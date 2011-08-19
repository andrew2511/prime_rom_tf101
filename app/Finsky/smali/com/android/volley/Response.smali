.class public Lcom/android/volley/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/Response$ErrorListener;,
        Lcom/android/volley/Response$ErrorCode;,
        Lcom/android/volley/Response$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final cacheEntry:Lcom/android/volley/Cache$Entry;

.field public final error:Lcom/android/volley/Response$ErrorCode;

.field public intermediate:Z

.field public final message:Ljava/lang/String;

.field public final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V
    .locals 2
    .parameter "error"
    .parameter "message"

    .prologue
    .local p0, this:Lcom/android/volley/Response;,"Lcom/android/volley/Response<TT;>;"
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/Response;->intermediate:Z

    .line 73
    iput-object v1, p0, Lcom/android/volley/Response;->result:Ljava/lang/Object;

    .line 74
    iput-object v1, p0, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    .line 75
    iput-object p1, p0, Lcom/android/volley/Response;->error:Lcom/android/volley/Response$ErrorCode;

    .line 76
    iput-object p2, p0, Lcom/android/volley/Response;->message:Ljava/lang/String;

    .line 77
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)V
    .locals 1
    .parameter
    .parameter "cacheEntry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/volley/Cache$Entry;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, this:Lcom/android/volley/Response;,"Lcom/android/volley/Response<TT;>;"
    .local p1, result:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/Response;->intermediate:Z

    .line 66
    iput-object p1, p0, Lcom/android/volley/Response;->result:Ljava/lang/Object;

    .line 67
    iput-object p2, p0, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    .line 68
    sget-object v0, Lcom/android/volley/Response$ErrorCode;->OK:Lcom/android/volley/Response$ErrorCode;

    iput-object v0, p0, Lcom/android/volley/Response;->error:Lcom/android/volley/Response$ErrorCode;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/Response;->message:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static error(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)Lcom/android/volley/Response;
    .locals 1
    .parameter "error"
    .parameter "displayMessage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Response$ErrorCode;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/android/volley/Response;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/Response;-><init>(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
    .locals 1
    .parameter
    .parameter "cacheEntry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/volley/Cache$Entry;",
            ")",
            "Lcom/android/volley/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, result:Ljava/lang/Object;,"TT;"
    new-instance v0, Lcom/android/volley/Response;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/Response;-><init>(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)V

    return-object v0
.end method
