.class Lcom/layar/FilterSettingsActivity$ButtonControl;
.super Ljava/lang/Object;
.source "FilterSettingsActivity.java"

# interfaces
.implements Lcom/layar/FilterSettingsActivity$FilterUIControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/FilterSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonControl"
.end annotation


# instance fields
.field private container:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/layar/FilterSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/layar/FilterSettingsActivity;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/layar/data/layer/Layer20;)V
    .locals 4
    .parameter
    .parameter "inflater"
    .parameter "root"
    .parameter "layer"

    .prologue
    .line 422
    iput-object p1, p0, Lcom/layar/FilterSettingsActivity$ButtonControl;->this$0:Lcom/layar/FilterSettingsActivity;

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    const v2, 0x7f03001e

    const/4 v3, 0x0

    invoke-virtual {p2, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/layar/FilterSettingsActivity$ButtonControl;->container:Landroid/view/ViewGroup;

    .line 409
    iget-object v2, p0, Lcom/layar/FilterSettingsActivity$ButtonControl;->container:Landroid/view/ViewGroup;

    const v3, 0x7f07005f

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 410
    .local v1, viewDescription:Landroid/widget/TextView;
    const-string v2, ""

    iget-object v3, p4, Lcom/layar/data/layer/Layer20;->authDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 411
    iget-object v2, p4, Lcom/layar/data/layer/Layer20;->authDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    :cond_0
    iget-object v2, p0, Lcom/layar/FilterSettingsActivity$ButtonControl;->container:Landroid/view/ViewGroup;

    const v3, 0x7f070060

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 414
    .local v0, button:Landroid/widget/Button;
    iget-object v2, p4, Lcom/layar/data/layer/Layer20;->authLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 415
    new-instance v2, Lcom/layar/FilterSettingsActivity$ButtonControl$1;

    invoke-direct {v2, p0, p4}, Lcom/layar/FilterSettingsActivity$ButtonControl$1;-><init>(Lcom/layar/FilterSettingsActivity$ButtonControl;Lcom/layar/data/layer/Layer20;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$0(Lcom/layar/FilterSettingsActivity$ButtonControl;)Lcom/layar/FilterSettingsActivity;
    .locals 1
    .parameter

    .prologue
    .line 403
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity$ButtonControl;->this$0:Lcom/layar/FilterSettingsActivity;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    const-string v0, "BUTTON"

    return-object v0
.end method

.method public getUI()Landroid/view/View;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity$ButtonControl;->container:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public saveValue(Lorg/json/JSONObject;)Z
    .locals 1
    .parameter "filterDetails"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 436
    const/4 v0, 0x0

    return v0
.end method
