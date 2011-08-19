.class Lcom/google/android/gm/AttachmentComposeView;
.super Landroid/widget/LinearLayout;
.source "AttachmentComposeView.java"


# instance fields
.field private mBottomBorderLarge:Landroid/view/View;

.field private mBottomBorderSmall:Landroid/view/View;

.field private final mFilename:Ljava/lang/String;

.field private mIsLast:Z

.field private mPosition:I

.field private final mSize:J

.field private mTopBorderLarge:Landroid/view/View;

.field private mTopBorderSmall:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gm/provider/Gmail$Attachment;)V
    .locals 5
    .parameter "c"
    .parameter "attachment"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    iget-object v1, p2, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gm/AttachmentComposeView;->mFilename:Ljava/lang/String;

    .line 35
    iget v1, p2, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/google/android/gm/AttachmentComposeView;->mSize:J

    .line 37
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>> Attachment uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>>           type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>>           name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/AttachmentComposeView;->mFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>>           size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gm/AttachmentComposeView;->mSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gm/AttachmentComposeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 44
    .local v0, factory:Landroid/view/LayoutInflater;
    const v1, 0x7f040005

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/gm/AttachmentComposeView;->populateAttachmentData(Landroid/content/Context;)V

    .line 47
    const v1, 0x7f0e0014

    invoke-virtual {p0, v1}, Lcom/google/android/gm/AttachmentComposeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/AttachmentComposeView;->mTopBorderSmall:Landroid/view/View;

    .line 48
    const v1, 0x7f0e0013

    invoke-virtual {p0, v1}, Lcom/google/android/gm/AttachmentComposeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/AttachmentComposeView;->mTopBorderLarge:Landroid/view/View;

    .line 49
    const v1, 0x7f0e0015

    invoke-virtual {p0, v1}, Lcom/google/android/gm/AttachmentComposeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/AttachmentComposeView;->mBottomBorderSmall:Landroid/view/View;

    .line 50
    const v1, 0x7f0e0016

    invoke-virtual {p0, v1}, Lcom/google/android/gm/AttachmentComposeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/AttachmentComposeView;->mBottomBorderLarge:Landroid/view/View;

    .line 51
    return-void
.end method

.method private populateAttachmentData(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const v4, 0x7f0e0011

    .line 88
    const v0, 0x7f0e0010

    invoke-virtual {p0, v0}, Lcom/google/android/gm/AttachmentComposeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/gm/AttachmentComposeView;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-wide v0, p0, Lcom/google/android/gm/AttachmentComposeView;->mSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0, v4}, Lcom/google/android/gm/AttachmentComposeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/google/android/gm/AttachmentComposeView;->mSize:J

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/AttachmentUtils;->convertToHumanReadableSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .end local p0
    :goto_0
    return-void

    .line 94
    .restart local p0
    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/android/gm/AttachmentComposeView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupBorders()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lcom/google/android/gm/AttachmentComposeView;->mTopBorderLarge:Landroid/view/View;

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 65
    :cond_0
    iget v0, p0, Lcom/google/android/gm/AttachmentComposeView;->mPosition:I

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/google/android/gm/AttachmentComposeView;->mTopBorderLarge:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/google/android/gm/AttachmentComposeView;->mTopBorderSmall:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/gm/AttachmentComposeView;->mIsLast:Z

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/google/android/gm/AttachmentComposeView;->mBottomBorderLarge:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/google/android/gm/AttachmentComposeView;->mBottomBorderSmall:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/AttachmentComposeView;->mTopBorderLarge:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/google/android/gm/AttachmentComposeView;->mTopBorderSmall:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/AttachmentComposeView;->mBottomBorderLarge:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/google/android/gm/AttachmentComposeView;->mBottomBorderSmall:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public addDeleteListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "clickListener"

    .prologue
    .line 83
    const v1, 0x7f0e0012

    invoke-virtual {p0, v1}, Lcom/google/android/gm/AttachmentComposeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 84
    .local v0, deleteButton:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method public updatePosition(IZ)V
    .locals 0
    .parameter "position"
    .parameter "isLast"

    .prologue
    .line 54
    iput p1, p0, Lcom/google/android/gm/AttachmentComposeView;->mPosition:I

    .line 55
    iput-boolean p2, p0, Lcom/google/android/gm/AttachmentComposeView;->mIsLast:Z

    .line 56
    invoke-direct {p0}, Lcom/google/android/gm/AttachmentComposeView;->setupBorders()V

    .line 57
    return-void
.end method
