.class abstract Lcom/android/vending/AssetInfoActivity$Section;
.super Ljava/lang/Object;
.source "AssetInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Section"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected mActivated:Z

.field protected mAttached:Z

.field protected mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/vending/AssetInfoActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1198
    const-class v0, Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/vending/AssetInfoActivity$Section;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/android/vending/AssetInfoActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1198
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$Section;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/AssetInfoActivity$Section;->mAttached:Z

    .line 1200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/AssetInfoActivity$Section;->mActivated:Z

    .line 1201
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$Section;->mViews:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1198
    invoke-direct {p0, p1}, Lcom/android/vending/AssetInfoActivity$Section;-><init>(Lcom/android/vending/AssetInfoActivity;)V

    return-void
.end method

.method private setVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 1299
    sget-boolean v2, Lcom/android/vending/AssetInfoActivity$Section;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/vending/AssetInfoActivity$Section;->mAttached:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1300
    :cond_0
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$Section;->mViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1301
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1303
    .end local v1           #v:Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 1

    .prologue
    .line 1286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/AssetInfoActivity$Section;->mActivated:Z

    .line 1287
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/vending/AssetInfoActivity$Section;->setVisibility(I)V

    .line 1288
    return-void
.end method

.method protected addHeader(II)Landroid/widget/TwoLineListItem;
    .locals 3
    .parameter "labelResId"
    .parameter "descriptionResId"

    .prologue
    .line 1236
    const v1, 0x7f040012

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetInfoActivity$Section;->inflateView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TwoLineListItem;

    .line 1237
    .local v0, header:Landroid/widget/TwoLineListItem;
    invoke-virtual {v0}, Landroid/widget/TwoLineListItem;->getText1()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1238
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 1239
    invoke-virtual {v0}, Landroid/widget/TwoLineListItem;->getText2()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 1243
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$Section;->addView(Landroid/view/View;)V

    .line 1244
    return-object v0

    .line 1241
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TwoLineListItem;->getText2()Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected addView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$Section;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity;->access$2600(Lcom/android/vending/AssetInfoActivity;)Lcom/android/vending/AssetInfoActivity$PaddingTweaker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$Section;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity;->access$2600(Lcom/android/vending/AssetInfoActivity;)Lcom/android/vending/AssetInfoActivity$PaddingTweaker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/vending/AssetInfoActivity$PaddingTweaker;->addView(Landroid/view/View;)V

    .line 1251
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/vending/AssetInfoActivity$Section;->addViewWithoutPadding(Landroid/view/View;)V

    .line 1252
    return-void
.end method

.method protected addViewWithoutPadding(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1255
    sget-boolean v0, Lcom/android/vending/AssetInfoActivity$Section;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vending/AssetInfoActivity$Section;->mAttached:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1257
    :cond_0
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$Section;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity;->access$2700(Lcom/android/vending/AssetInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1258
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$Section;->mViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1259
    return-void
.end method

.method public attach()V
    .locals 2

    .prologue
    .line 1216
    iget-boolean v0, p0, Lcom/android/vending/AssetInfoActivity$Section;->mAttached:Z

    if-eqz v0, :cond_0

    .line 1217
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already attached!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1219
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/AssetInfoActivity$Section;->mAttached:Z

    .line 1220
    invoke-virtual {p0}, Lcom/android/vending/AssetInfoActivity$Section;->onAttach()V

    .line 1221
    invoke-virtual {p0}, Lcom/android/vending/AssetInfoActivity$Section;->refresh()V

    .line 1222
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 1294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/AssetInfoActivity$Section;->mActivated:Z

    .line 1295
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/vending/AssetInfoActivity$Section;->setVisibility(I)V

    .line 1296
    return-void
.end method

.method protected inflateView(I)Landroid/view/View;
    .locals 2
    .parameter "resId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$Section;->this$0:Lcom/android/vending/AssetInfoActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isActivated()Z
    .locals 1

    .prologue
    .line 1306
    iget-boolean v0, p0, Lcom/android/vending/AssetInfoActivity$Section;->mActivated:Z

    return v0
.end method

.method protected makeFocusable(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 1262
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 1265
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 1266
    .local v1, paddingLeft:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 1267
    .local v3, paddingTop:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 1268
    .local v2, paddingRight:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 1269
    .local v0, paddingBottom:I
    const v4, 0x1080062

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1270
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 1271
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$Section;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v4, p1}, Lcom/android/vending/AssetInfoActivity;->setViewOnClickListener(Landroid/view/View;)V

    .line 1272
    return-void
.end method

.method protected abstract onAttach()V
.end method

.method public abstract refresh()V
.end method

.method protected setActionTag(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "actionTag"

    .prologue
    .line 1278
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1279
    invoke-virtual {p0, p1}, Lcom/android/vending/AssetInfoActivity$Section;->makeFocusable(Landroid/view/View;)V

    .line 1280
    return-void
.end method
