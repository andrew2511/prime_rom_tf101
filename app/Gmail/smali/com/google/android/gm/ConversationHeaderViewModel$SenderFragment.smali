.class Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;
.super Ljava/lang/Object;
.source "ConversationHeaderViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/ConversationHeaderViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SenderFragment"
.end annotation


# instance fields
.field ellipsizedText:Ljava/lang/String;

.field end:I

.field isFixed:Z

.field shouldDisplay:Z

.field start:I

.field style:Landroid/text/style/CharacterStyle;

.field width:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(IILjava/lang/CharSequence;Landroid/text/style/CharacterStyle;ZLandroid/text/TextPaint;)V
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter "sendersText"
    .parameter "style"
    .parameter "isFixed"
    .parameter "paint"

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput p1, p0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->start:I

    .line 248
    iput p2, p0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->end:I

    .line 249
    iput-object p4, p0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->style:Landroid/text/style/CharacterStyle;

    .line 250
    iput-boolean p5, p0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->isFixed:Z

    .line 251
    invoke-virtual {p4, p6}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    .line 252
    invoke-virtual {p6, p3, p1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->width:I

    .line 253
    return-void
.end method
