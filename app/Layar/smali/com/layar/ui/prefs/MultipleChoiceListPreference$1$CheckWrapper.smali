.class Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$CheckWrapper;
.super Ljava/lang/Object;
.source "MultipleChoiceListPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckWrapper"
.end annotation


# instance fields
.field private mPosition:I

.field final synthetic this$1:Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;

.field private final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;ILandroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter "position"
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$CheckWrapper;->this$1:Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;

    iput-object p3, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$CheckWrapper;->val$listView:Landroid/widget/ListView;

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput p2, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$CheckWrapper;->mPosition:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 314
    iget-object v2, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$CheckWrapper;->this$1:Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;

    invoke-static {v2}, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;->access$0(Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;)Lcom/layar/ui/prefs/MultipleChoiceListPreference;

    move-result-object v2

    invoke-static {v2}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->access$0(Lcom/layar/ui/prefs/MultipleChoiceListPreference;)[Z

    move-result-object v2

    iget v3, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$CheckWrapper;->mPosition:I

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_1

    move v1, v4

    .line 315
    .local v1, isChecked:Z
    :goto_0
    iget-object v2, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$CheckWrapper;->this$1:Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;

    invoke-static {v2}, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;->access$0(Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;)Lcom/layar/ui/prefs/MultipleChoiceListPreference;

    move-result-object v2

    invoke-static {v2}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->access$0(Lcom/layar/ui/prefs/MultipleChoiceListPreference;)[Z

    move-result-object v2

    iget v3, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$CheckWrapper;->mPosition:I

    aput-boolean v1, v2, v3

    .line 317
    iget v2, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$CheckWrapper;->mPosition:I

    if-nez v2, :cond_3

    .line 318
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$CheckWrapper;->this$1:Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;

    invoke-static {v2}, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;->access$0(Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;)Lcom/layar/ui/prefs/MultipleChoiceListPreference;

    move-result-object v2

    invoke-static {v2}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->access$0(Lcom/layar/ui/prefs/MultipleChoiceListPreference;)[Z

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 328
    .end local v0           #i:I
    :cond_0
    :goto_2
    return-void

    .line 314
    .end local v1           #isChecked:Z
    :cond_1
    const/4 v2, 0x1

    move v1, v2

    goto :goto_0

    .line 319
    .restart local v0       #i:I
    .restart local v1       #isChecked:Z
    :cond_2
    iget-object v2, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$CheckWrapper;->this$1:Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;

    invoke-static {v2}, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;->access$0(Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;)Lcom/layar/ui/prefs/MultipleChoiceListPreference;

    move-result-object v2

    invoke-static {v2}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->access$0(Lcom/layar/ui/prefs/MultipleChoiceListPreference;)[Z

    move-result-object v2

    aput-boolean v1, v2, v0

    .line 320
    iget-object v2, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$CheckWrapper;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 323
    .end local v0           #i:I
    :cond_3
    if-nez v1, :cond_0

    .line 324
    iget-object v2, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$CheckWrapper;->this$1:Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;

    invoke-static {v2}, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;->access$0(Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;)Lcom/layar/ui/prefs/MultipleChoiceListPreference;

    move-result-object v2

    invoke-static {v2}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->access$0(Lcom/layar/ui/prefs/MultipleChoiceListPreference;)[Z

    move-result-object v2

    aput-boolean v4, v2, v4

    .line 325
    iget-object v2, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$CheckWrapper;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2, v4, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_2
.end method
