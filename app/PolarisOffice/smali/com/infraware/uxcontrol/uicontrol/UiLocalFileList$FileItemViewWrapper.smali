.class Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;
.super Ljava/lang/Object;
.source "UiLocalFileList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileItemViewWrapper"
.end annotation


# instance fields
.field private m_oCheckBox:Landroid/widget/CheckBox;

.field private m_oCommentView:Landroid/widget/TextView;

.field private m_oDateView:Landroid/widget/TextView;

.field private m_oImageView:Landroid/widget/ImageView;

.field private m_oItemView:Landroid/view/View;

.field private m_oNameView:Landroid/widget/TextView;

.field private m_oSizeView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;


# direct methods
.method public constructor <init>(Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "a_oItemView"

    .prologue
    .line 1319
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1320
    iput-object p2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->m_oItemView:Landroid/view/View;

    .line 1321
    return-void
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 2

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->m_oCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    .line 1360
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->m_oItemView:Landroid/view/View;

    const v1, 0x7f0c003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->m_oCheckBox:Landroid/widget/CheckBox;

    .line 1362
    :cond_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->m_oCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getCommentView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->m_oCommentView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->m_oItemView:Landroid/view/View;

    const v1, 0x7f0c003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->m_oCommentView:Landroid/widget/TextView;

    .line 1334
    :cond_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->m_oCommentView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDateView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->m_oDateView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->m_oItemView:Landroid/view/View;

    const v1, 0x7f0c00ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->m_oDateView:Landroid/widget/TextView;

    .line 1348
    :cond_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->m_oDateView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->m_oImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->m_oItemView:Landroid/view/View;

    const v1, 0x7f0c0034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->m_oImageView:Landroid/widget/ImageView;

    .line 1355
    :cond_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->m_oImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getNameView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->m_oNameView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->m_oItemView:Landroid/view/View;

    const v1, 0x7f0c0035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->m_oNameView:Landroid/widget/TextView;

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->m_oNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSizeView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->m_oSizeView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->m_oItemView:Landroid/view/View;

    const v1, 0x7f0c00b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->m_oSizeView:Landroid/widget/TextView;

    .line 1341
    :cond_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->m_oSizeView:Landroid/widget/TextView;

    return-object v0
.end method
