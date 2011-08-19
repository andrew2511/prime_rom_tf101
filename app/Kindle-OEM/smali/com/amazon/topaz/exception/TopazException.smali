.class public Lcom/amazon/topaz/exception/TopazException;
.super Ljava/lang/Exception;
.source "TopazException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/topaz/exception/TopazException;->cause:Ljava/lang/Throwable;

    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 11
    iput-object p2, p0, Lcom/amazon/topaz/exception/TopazException;->cause:Ljava/lang/Throwable;

    .line 12
    return-void
.end method


# virtual methods
.method public printStackTrace()V
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    iget-object v0, p0, Lcom/amazon/topaz/exception/TopazException;->cause:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/amazon/topaz/exception/TopazException;->cause:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    :cond_0
    return-void
.end method
