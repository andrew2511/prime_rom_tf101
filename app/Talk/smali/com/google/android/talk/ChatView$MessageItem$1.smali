.class Lcom/google/android/talk/ChatView$MessageItem$1;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView$MessageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/ChatView$MessageItem;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView$MessageItem;)V
    .locals 0
    .parameter

    .prologue
    .line 928
    iput-object p1, p0, Lcom/google/android/talk/ChatView$MessageItem$1;->this$1:Lcom/google/android/talk/ChatView$MessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 2
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "spanstartv"
    .parameter "v"
    .parameter "fm"

    .prologue
    .line 932
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    const/16 v1, 0xa

    sub-int/2addr v0, v1

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 933
    return-void
.end method
