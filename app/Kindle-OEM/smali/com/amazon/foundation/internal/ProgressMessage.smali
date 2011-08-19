.class public Lcom/amazon/foundation/internal/ProgressMessage;
.super Ljava/lang/Object;
.source "ProgressMessage.java"


# static fields
.field public static final PGT_DEBUGLOG:I = 0x3

.field public static final PGT_ERROR:I = 0x2

.field public static final PGT_INFO:I = 0x0

.field public static final PGT_WARNING:I = 0x1

.field public static final PTG_CRITICAL:I = 0x4


# instance fields
.field private message:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/foundation/internal/ProgressMessage;->type:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/foundation/internal/ProgressMessage;->message:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public empty()V
    .locals 1

    .prologue
    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/foundation/internal/ProgressMessage;->type:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/foundation/internal/ProgressMessage;->message:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/amazon/foundation/internal/ProgressMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amazon/foundation/internal/ProgressMessage;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/amazon/foundation/internal/ProgressMessage;->message:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/amazon/foundation/internal/ProgressMessage;->type:Ljava/lang/String;

    .line 38
    return-void
.end method
