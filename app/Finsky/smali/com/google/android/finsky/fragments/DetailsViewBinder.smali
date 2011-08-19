.class public abstract Lcom/google/android/finsky/fragments/DetailsViewBinder;
.super Ljava/lang/Object;
.source "DetailsViewBinder.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field protected mDoc:Lcom/google/android/finsky/api/model/Document;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mLayout:Landroid/view/View;

.field private mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

.field protected mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setupHeader(II)V
    .locals 4
    .parameter "headerLayoutId"
    .parameter "headerStringId"

    .prologue
    .line 78
    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 79
    .local v1, headerView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 81
    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/CorpusMetadata;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v0

    .line 85
    .local v0, color:I
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    .end local v0           #color:I
    :cond_0
    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;II)V
    .locals 0
    .parameter "view"
    .parameter "doc"
    .parameter "headerLayoutId"
    .parameter "headerStringId"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mLayout:Landroid/view/View;

    .line 59
    iput-object p2, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 61
    invoke-direct {p0, p3, p4}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->setupHeader(II)V

    .line 62
    return-void
.end method

.method protected getLayoutSwitcher()Lcom/google/android/finsky/layout/LayoutSwitcher;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .locals 1
    .parameter "context"
    .parameter "api"
    .parameter "navManager"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 53
    iput-object p3, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 54
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mInflater:Landroid/view/LayoutInflater;

    .line 55
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V
    .locals 2
    .parameter "error"
    .parameter "message"

    .prologue
    .line 127
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, errorMessage:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->getLayoutSwitcher()Lcom/google/android/finsky/layout/LayoutSwitcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToErrorMode(Ljava/lang/String;)V

    .line 131
    .end local v0           #errorMessage:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected setButtonClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "buttonLayoutId"
    .parameter "listener"

    .prologue
    .line 108
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, footerButton:Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void
.end method

.method protected setButtonVisibility(III)V
    .locals 4
    .parameter "buttonLayoutId"
    .parameter "visibility"
    .parameter "stringId"

    .prologue
    .line 93
    const/16 v1, 0x8

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    if-eqz p2, :cond_0

    .line 94
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid visibility value for a view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 98
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 99
    if-nez p2, :cond_1

    .line 100
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(I)V

    .line 102
    :cond_1
    return-void
.end method

.method public setLayoutSwitcher(Lcom/google/android/finsky/layout/LayoutSwitcher;)V
    .locals 0
    .parameter "layoutSwitcher"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    .line 72
    return-void
.end method
