.class public Lcom/infraware/evengine/EV$BOOKMARK_LABEL;
.super Ljava/lang/Object;
.source "EV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/evengine/EV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BOOKMARK_LABEL"
.end annotation


# instance fields
.field public szFilePath:Ljava/lang/String;

.field public szLabel:Ljava/lang/String;

.field final synthetic this$0:Lcom/infraware/evengine/EV;


# direct methods
.method public constructor <init>(Lcom/infraware/evengine/EV;)V
    .locals 1
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/infraware/evengine/EV$BOOKMARK_LABEL;->this$0:Lcom/infraware/evengine/EV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/infraware/evengine/EV$BOOKMARK_LABEL;->szLabel:Ljava/lang/String;

    .line 310
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/infraware/evengine/EV$BOOKMARK_LABEL;->szFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 313
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/evengine/EV$BOOKMARK_LABEL;->szFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/infraware/evengine/EV$BOOKMARK_LABEL;->szLabel:Ljava/lang/String;

    .line 314
    return-void
.end method
