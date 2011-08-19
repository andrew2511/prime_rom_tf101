.class Lcom/android/browser/BreadCrumbView$Crumb;
.super Ljava/lang/Object;
.source "BreadCrumbView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BreadCrumbView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Crumb"
.end annotation


# instance fields
.field public canGoBack:Z

.field public crumbView:Landroid/view/View;

.field public data:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/browser/BreadCrumbView;


# direct methods
.method public constructor <init>(Lcom/android/browser/BreadCrumbView;Ljava/lang/String;ZLjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter "title"
    .parameter "backEnabled"
    .parameter "tag"

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/browser/BreadCrumbView$Crumb;->this$0:Lcom/android/browser/BreadCrumbView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    invoke-direct {p0, p2}, Lcom/android/browser/BreadCrumbView$Crumb;->makeCrumbView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/android/browser/BreadCrumbView$Crumb;->init(Landroid/view/View;ZLjava/lang/Object;)V

    .line 344
    return-void
.end method

.method private init(Landroid/view/View;ZLjava/lang/Object;)V
    .locals 0
    .parameter "view"
    .parameter "back"
    .parameter "tag"

    .prologue
    .line 351
    iput-boolean p2, p0, Lcom/android/browser/BreadCrumbView$Crumb;->canGoBack:Z

    .line 352
    iput-object p1, p0, Lcom/android/browser/BreadCrumbView$Crumb;->crumbView:Landroid/view/View;

    .line 353
    iput-object p3, p0, Lcom/android/browser/BreadCrumbView$Crumb;->data:Ljava/lang/Object;

    .line 354
    return-void
.end method

.method private makeCrumbView(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 5
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x10

    .line 357
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/browser/BreadCrumbView$Crumb;->this$0:Lcom/android/browser/BreadCrumbView;

    invoke-static {v1}, Lcom/android/browser/BreadCrumbView;->access$000(Lcom/android/browser/BreadCrumbView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 358
    .local v0, tv:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/browser/BreadCrumbView$Crumb;->this$0:Lcom/android/browser/BreadCrumbView;

    invoke-static {v1}, Lcom/android/browser/BreadCrumbView;->access$100(Lcom/android/browser/BreadCrumbView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030044

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 359
    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 360
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 361
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    iget-object v1, p0, Lcom/android/browser/BreadCrumbView$Crumb;->this$0:Lcom/android/browser/BreadCrumbView;

    invoke-static {v1}, Lcom/android/browser/BreadCrumbView;->access$200(Lcom/android/browser/BreadCrumbView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 366
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 367
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 368
    return-object v0
.end method
