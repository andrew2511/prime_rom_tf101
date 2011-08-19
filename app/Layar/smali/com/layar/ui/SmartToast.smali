.class public Lcom/layar/ui/SmartToast;
.super Landroid/widget/Toast;
.source "SmartToast.java"


# static fields
.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field mNextView:Lcom/layar/ui/RotateLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p1, p0, Lcom/layar/ui/SmartToast;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public static bridge synthetic makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;II)Lcom/layar/ui/SmartToast;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/layar/ui/SmartToast;

    move-result-object v0

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;II)Lcom/layar/ui/SmartToast;
    .locals 1
    .parameter "context"
    .parameter "resId"
    .parameter "duration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/layar/ui/SmartToast;

    move-result-object v0

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/layar/ui/SmartToast;
    .locals 6
    .parameter "context"
    .parameter "text"
    .parameter "duration"

    .prologue
    .line 76
    new-instance v1, Lcom/layar/ui/SmartToast;

    invoke-direct {v1, p0}, Lcom/layar/ui/SmartToast;-><init>(Landroid/content/Context;)V

    .line 78
    .local v1, result:Lcom/layar/ui/SmartToast;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 79
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v4, 0x7f030055

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/layar/ui/RotateLayout;

    .line 80
    .local v3, v:Lcom/layar/ui/RotateLayout;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/layar/ui/RotateLayout;->useNewImplementation(Z)V

    .line 82
    const v4, 0x102000b

    invoke-virtual {v3, v4}, Lcom/layar/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 83
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iput-object v3, v1, Lcom/layar/ui/SmartToast;->mNextView:Lcom/layar/ui/RotateLayout;

    .line 86
    invoke-virtual {v1, p2}, Lcom/layar/ui/SmartToast;->setDuration(I)V

    .line 88
    return-object v1
.end method


# virtual methods
.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/layar/ui/SmartToast;->getView()Lcom/layar/ui/RotateLayout;

    move-result-object v0

    return-object v0
.end method

.method public getView()Lcom/layar/ui/RotateLayout;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/layar/ui/SmartToast;->mNextView:Lcom/layar/ui/RotateLayout;

    return-object v0
.end method

.method public setText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/layar/ui/SmartToast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layar/ui/SmartToast;->setText(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 120
    iget-object v1, p0, Lcom/layar/ui/SmartToast;->mNextView:Lcom/layar/ui/RotateLayout;

    if-nez v1, :cond_0

    .line 121
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This Toast was not created with Toast.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/layar/ui/SmartToast;->mNextView:Lcom/layar/ui/RotateLayout;

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Lcom/layar/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 124
    .local v0, tv:Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 125
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This Toast was not created with Toast.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/layar/ui/SmartToast;->mNextView:Lcom/layar/ui/RotateLayout;

    invoke-super {p0, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 55
    invoke-super {p0}, Landroid/widget/Toast;->show()V

    .line 56
    return-void
.end method
