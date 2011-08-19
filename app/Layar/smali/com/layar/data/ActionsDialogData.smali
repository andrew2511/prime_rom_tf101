.class public Lcom/layar/data/ActionsDialogData;
.super Lcom/layar/data/DialogData;
.source "ActionsDialogData.java"


# instance fields
.field public actions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/PoiAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/layar/data/DialogData;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/data/ActionsDialogData;->actions:Ljava/util/ArrayList;

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "title"
    .parameter "description"
    .parameter "iconUrl"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/layar/data/DialogData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/data/ActionsDialogData;->actions:Ljava/util/ArrayList;

    .line 14
    return-void
.end method
