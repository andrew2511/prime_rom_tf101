.class final Lcom/android/systemui/statusbar/phone/Ticker$Segment;
.super Ljava/lang/Object;
.source "Ticker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/Ticker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Segment"
.end annotation


# instance fields
.field current:I

.field first:Z

.field icon:Landroid/graphics/drawable/Drawable;

.field next:I

.field notification:Lcom/android/internal/statusbar/StatusBarNotification;

.field text:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/Ticker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/Ticker;Lcom/android/internal/statusbar/StatusBarNotification;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter
    .parameter "n"
    .parameter "icon"
    .parameter "text"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    .line 133
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->icon:Landroid/graphics/drawable/Drawable;

    .line 134
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, index:I
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 137
    .local v1, len:I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {p4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/TextUtils;->isGraphic(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->current:I

    .line 141
    iput v0, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->next:I

    .line 142
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->first:Z

    .line 143
    return-void
.end method


# virtual methods
.method advance()Ljava/lang/CharSequence;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 99
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->first:Z

    .line 100
    iget v2, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->next:I

    .line 101
    .local v2, index:I
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 102
    .local v4, len:I
    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-interface {v9, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Landroid/text/TextUtils;->isGraphic(C)Z

    move-result v9

    if-nez v9, :cond_0

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    :cond_0
    if-lt v2, v4, :cond_1

    move-object v9, v11

    .line 128
    :goto_1
    return-object v9

    .line 109
    :cond_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-interface {v9, v2, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 110
    .local v8, substr:Ljava/lang/CharSequence;
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->getLayout(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;

    move-result-object v3

    .line 111
    .local v3, l:Landroid/text/StaticLayout;
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    .line 113
    .local v5, lineCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v5, :cond_4

    .line 114
    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v7

    .line 115
    .local v7, start:I
    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v0

    .line 116
    .local v0, end:I
    const/4 v9, 0x1

    sub-int v9, v5, v9

    if-ne v1, v9, :cond_2

    .line 117
    iput v4, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->next:I

    .line 121
    :goto_3
    invoke-virtual {p0, v8, v7, v0}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->rtrim(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 122
    .local v6, result:Ljava/lang/CharSequence;
    if-eqz v6, :cond_3

    .line 123
    add-int v9, v2, v7

    iput v9, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->current:I

    move-object v9, v6

    .line 124
    goto :goto_1

    .line 119
    .end local v6           #result:Ljava/lang/CharSequence;
    :cond_2
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v3, v9}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v9

    add-int/2addr v9, v2

    iput v9, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->next:I

    goto :goto_3

    .line 113
    .restart local v6       #result:Ljava/lang/CharSequence;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 127
    .end local v0           #end:I
    .end local v6           #result:Ljava/lang/CharSequence;
    .end local v7           #start:I
    :cond_4
    iput v4, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->current:I

    move-object v9, v11

    .line 128
    goto :goto_1
.end method

.method getLayout(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;
    .locals 8
    .parameter "substr"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/Ticker;->access$000(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/widget/TextSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextSwitcher;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/Ticker;->access$000(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/widget/TextSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextSwitcher;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/Ticker;->access$000(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/widget/TextSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextSwitcher;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    .line 65
    .local v3, w:I
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/Ticker;->access$100(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/text/TextPaint;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method getText()Ljava/lang/CharSequence;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 80
    iget v5, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->current:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 81
    const/4 v5, 0x0

    .line 90
    :goto_0
    return-object v5

    .line 83
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->current:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {v5, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 84
    .local v4, substr:Ljava/lang/CharSequence;
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->getLayout(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;

    move-result-object v1

    .line 85
    .local v1, l:Landroid/text/StaticLayout;
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    .line 86
    .local v2, lineCount:I
    if-lez v2, :cond_1

    .line 87
    invoke-virtual {v1, v8}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v3

    .line 88
    .local v3, start:I
    invoke-virtual {v1, v8}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v0

    .line 89
    .local v0, end:I
    iget v5, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->current:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->next:I

    .line 90
    invoke-virtual {p0, v4, v3, v0}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->rtrim(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_0

    .line 92
    .end local v0           #end:I
    .end local v3           #start:I
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lineCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " current="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->current:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " text="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method rtrim(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "substr"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 69
    :goto_0
    if-le p3, p2, :cond_0

    const/4 v0, 0x1

    sub-int v0, p3, v0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/text/TextUtils;->isGraphic(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 72
    :cond_0
    if-le p3, p2, :cond_1

    .line 73
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 75
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
