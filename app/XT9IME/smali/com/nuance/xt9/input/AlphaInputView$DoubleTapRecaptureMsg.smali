.class Lcom/nuance/xt9/input/AlphaInputView$DoubleTapRecaptureMsg;
.super Ljava/lang/Object;
.source "AlphaInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/AlphaInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoubleTapRecaptureMsg"
.end annotation


# instance fields
.field mContextBuffer:Ljava/lang/CharSequence;

.field mRecaptureBuffer:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "contextBuffer"
    .parameter "recaptureBuffer"

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/nuance/xt9/input/AlphaInputView$DoubleTapRecaptureMsg;->mContextBuffer:Ljava/lang/CharSequence;

    .line 127
    iput-object p2, p0, Lcom/nuance/xt9/input/AlphaInputView$DoubleTapRecaptureMsg;->mRecaptureBuffer:Ljava/lang/CharSequence;

    .line 128
    return-void
.end method
