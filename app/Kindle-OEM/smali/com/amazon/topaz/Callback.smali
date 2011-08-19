.class public abstract Lcom/amazon/topaz/Callback;
.super Ljava/lang/Object;
.source "Callback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/Callback$1;,
        Lcom/amazon/topaz/Callback$Info;
    }
.end annotation


# instance fields
.field private final label_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazon/topaz/Callback;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 38
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->UNSET_CALLBACK_LABEL:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/amazon/topaz/Callback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "label"
    .parameter "defaultLabel"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iput-object p1, p0, Lcom/amazon/topaz/Callback;->label_:Ljava/lang/String;

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iput-object p2, p0, Lcom/amazon/topaz/Callback;->label_:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getInfo()Lcom/amazon/topaz/Callback$Info;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/amazon/topaz/Callback$Info;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/topaz/Callback$Info;-><init>(Lcom/amazon/topaz/Callback$1;)V

    .line 99
    .local v0, ret:Lcom/amazon/topaz/Callback$Info;
    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amazon/topaz/Callback;->label_:Ljava/lang/String;

    return-object v0
.end method

.method public abstract run(Lcom/amazon/topaz/Viewer;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
