.class Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$CheckWrapper;
.super Ljava/lang/Object;
.source "CategoryChoiceListPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckWrapper"
.end annotation


# instance fields
.field private mPosition:I

.field final synthetic this$1:Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;

.field private final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;ILandroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter "position"
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$CheckWrapper;->this$1:Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;

    iput-object p3, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$CheckWrapper;->val$listView:Landroid/widget/ListView;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput p2, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$CheckWrapper;->mPosition:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 227
    iget-object v2, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$CheckWrapper;->this$1:Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;

    invoke-static {v2}, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;->access$0(Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;)Lcom/layar/ui/prefs/CategoryChoiceListPreference;

    move-result-object v2

    invoke-static {v2}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->access$0(Lcom/layar/ui/prefs/CategoryChoiceListPreference;)[Z

    move-result-object v2

    iget v3, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$CheckWrapper;->mPosition:I

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_1

    move v1, v4

    .line 228
    .local v1, isChecked:Z
    :goto_0
    iget-object v2, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$CheckWrapper;->this$1:Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;

    invoke-static {v2}, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;->access$0(Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;)Lcom/layar/ui/prefs/CategoryChoiceListPreference;

    move-result-object v2

    invoke-static {v2}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->access$0(Lcom/layar/ui/prefs/CategoryChoiceListPreference;)[Z

    move-result-object v2

    iget v3, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$CheckWrapper;->mPosition:I

    aput-boolean v1, v2, v3

    .line 230
    iget v2, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$CheckWrapper;->mPosition:I

    if-nez v2, :cond_3

    .line 231
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$CheckWrapper;->this$1:Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;

    invoke-static {v2}, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;->access$0(Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;)Lcom/layar/ui/prefs/CategoryChoiceListPreference;

    move-result-object v2

    invoke-static {v2}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->access$0(Lcom/layar/ui/prefs/CategoryChoiceListPreference;)[Z

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 249
    .end local v0           #i:I
    :cond_0
    :goto_2
    return-void

    .end local v1           #isChecked:Z
    :cond_1
    move v1, v5

    .line 227
    goto :goto_0

    .line 232
    .restart local v0       #i:I
    .restart local v1       #isChecked:Z
    :cond_2
    iget-object v2, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$CheckWrapper;->this$1:Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;

    invoke-static {v2}, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;->access$0(Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;)Lcom/layar/ui/prefs/CategoryChoiceListPreference;

    move-result-object v2

    invoke-static {v2}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->access$0(Lcom/layar/ui/prefs/CategoryChoiceListPreference;)[Z

    move-result-object v2

    aput-boolean v1, v2, v0

    .line 233
    iget-object v2, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$CheckWrapper;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 238
    .end local v0           #i:I
    :cond_3
    if-nez v1, :cond_4

    .line 239
    iget-object v2, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$CheckWrapper;->this$1:Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;

    invoke-static {v2}, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;->access$0(Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;)Lcom/layar/ui/prefs/CategoryChoiceListPreference;

    move-result-object v2

    invoke-static {v2}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->access$0(Lcom/layar/ui/prefs/CategoryChoiceListPreference;)[Z

    move-result-object v2

    aput-boolean v4, v2, v4

    .line 240
    iget-object v2, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$CheckWrapper;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2, v4, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_2

    .line 242
    :cond_4
    const/4 v0, 0x1

    .restart local v0       #i:I
    :goto_3
    iget-object v2, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$CheckWrapper;->this$1:Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;

    invoke-static {v2}, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;->access$0(Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;)Lcom/layar/ui/prefs/CategoryChoiceListPreference;

    move-result-object v2

    invoke-static {v2}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->access$0(Lcom/layar/ui/prefs/CategoryChoiceListPreference;)[Z

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_5

    .line 246
    iget-object v2, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$CheckWrapper;->this$1:Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;

    invoke-static {v2}, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;->access$0(Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;)Lcom/layar/ui/prefs/CategoryChoiceListPreference;

    move-result-object v2

    invoke-static {v2}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->access$0(Lcom/layar/ui/prefs/CategoryChoiceListPreference;)[Z

    move-result-object v2

    aput-boolean v5, v2, v4

    .line 247
    iget-object v2, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$CheckWrapper;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2, v4, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_2

    .line 243
    :cond_5
    iget-object v2, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$CheckWrapper;->this$1:Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;

    invoke-static {v2}, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;->access$0(Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;)Lcom/layar/ui/prefs/CategoryChoiceListPreference;

    move-result-object v2

    invoke-static {v2}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->access$0(Lcom/layar/ui/prefs/CategoryChoiceListPreference;)[Z

    move-result-object v2

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
