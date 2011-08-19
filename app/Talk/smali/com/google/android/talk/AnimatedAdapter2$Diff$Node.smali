.class Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
.super Ljava/lang/Object;
.source "AnimatedAdapter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AnimatedAdapter2$Diff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Node"
.end annotation


# instance fields
.field public final isSnake:Z

.field public final prev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;

.field final synthetic this$1:Lcom/google/android/talk/AnimatedAdapter2$Diff;

.field public final x:I

.field public final y:I


# direct methods
.method public constructor <init>(Lcom/google/android/talk/AnimatedAdapter2$Diff;IILcom/google/android/talk/AnimatedAdapter2$Diff$Node;Z)V
    .locals 0
    .parameter
    .parameter "i"
    .parameter "j"
    .parameter "prev"
    .parameter "isSnake"

    .prologue
    .line 667
    iput-object p1, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->this$1:Lcom/google/android/talk/AnimatedAdapter2$Diff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    iput p2, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->x:I

    .line 669
    iput p3, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->y:I

    .line 670
    iput-object p4, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->prev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;

    .line 671
    iput-boolean p5, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->isSnake:Z

    .line 672
    return-void
.end method
