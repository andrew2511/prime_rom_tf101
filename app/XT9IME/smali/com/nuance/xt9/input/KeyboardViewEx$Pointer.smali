.class public Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;
.super Ljava/lang/Object;
.source "KeyboardViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/KeyboardViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Pointer"
.end annotation


# instance fields
.field public DownTime:J

.field public EventTime:J

.field public Path:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field public Pressed:Z

.field public RePress:Z

.field final synthetic this$0:Lcom/nuance/xt9/input/KeyboardViewEx;


# direct methods
.method public constructor <init>(Lcom/nuance/xt9/input/KeyboardViewEx;)V
    .locals 3
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 142
    iput-object p1, p0, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/xt9/input/KeyboardViewEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-boolean v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Pressed:Z

    .line 145
    iput-boolean v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->RePress:Z

    .line 146
    iput-wide v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->DownTime:J

    .line 147
    iput-wide v1, p0, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->EventTime:J

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    return-void
.end method
