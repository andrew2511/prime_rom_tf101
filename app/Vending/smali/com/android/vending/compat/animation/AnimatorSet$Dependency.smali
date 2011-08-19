.class Lcom/android/vending/compat/animation/AnimatorSet$Dependency;
.super Ljava/lang/Object;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/compat/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Dependency"
.end annotation


# instance fields
.field public node:Lcom/android/vending/compat/animation/AnimatorSet$Node;

.field public rule:I


# direct methods
.method public constructor <init>(Lcom/android/vending/compat/animation/AnimatorSet$Node;I)V
    .locals 0
    .parameter "node"
    .parameter "rule"

    .prologue
    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    iput-object p1, p0, Lcom/android/vending/compat/animation/AnimatorSet$Dependency;->node:Lcom/android/vending/compat/animation/AnimatorSet$Node;

    .line 683
    iput p2, p0, Lcom/android/vending/compat/animation/AnimatorSet$Dependency;->rule:I

    .line 684
    return-void
.end method
