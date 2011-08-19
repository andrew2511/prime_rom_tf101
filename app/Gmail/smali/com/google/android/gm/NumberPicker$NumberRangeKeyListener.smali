.class Lcom/google/android/gm/NumberPicker$NumberRangeKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberRangeKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/NumberPicker;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/google/android/gm/NumberPicker$NumberRangeKeyListener;->this$0:Lcom/google/android/gm/NumberPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/NumberPicker;Lcom/google/android/gm/NumberPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lcom/google/android/gm/NumberPicker$NumberRangeKeyListener;-><init>(Lcom/google/android/gm/NumberPicker;)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 444
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 445
    .local v0, filtered:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 446
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 449
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-interface {p4, v4, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v4

    invoke-interface {p4, p6, v4}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, result:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    .line 466
    :goto_0
    return-object v3

    .line 456
    :cond_1
    iget-object v3, p0, Lcom/google/android/gm/NumberPicker$NumberRangeKeyListener;->this$0:Lcom/google/android/gm/NumberPicker;

    invoke-static {v3, v1}, Lcom/google/android/gm/NumberPicker;->access$1300(Lcom/google/android/gm/NumberPicker;Ljava/lang/String;)I

    move-result v2

    .line 463
    .local v2, val:I
    iget-object v3, p0, Lcom/google/android/gm/NumberPicker$NumberRangeKeyListener;->this$0:Lcom/google/android/gm/NumberPicker;

    invoke-static {v3}, Lcom/google/android/gm/NumberPicker;->access$1400(Lcom/google/android/gm/NumberPicker;)I

    move-result v3

    if-le v2, v3, :cond_2

    .line 464
    const-string v3, ""

    goto :goto_0

    :cond_2
    move-object v3, v0

    .line 466
    goto :goto_0
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 437
    invoke-static {}, Lcom/google/android/gm/NumberPicker;->access$1200()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x2

    return v0
.end method
