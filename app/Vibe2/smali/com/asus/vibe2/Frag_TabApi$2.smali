.class Lcom/asus/vibe2/Frag_TabApi$2;
.super Ljava/lang/Object;
.source "Frag_TabApi.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/vibe2/Frag_TabApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/vibe2/Frag_TabApi;


# direct methods
.method constructor <init>(Lcom/asus/vibe2/Frag_TabApi;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/asus/vibe2/Frag_TabApi$2;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "v"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/asus/vibe2/Frag_TabApi$2;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v2, v1, Lcom/asus/vibe2/Frag_TabApi;->mParam:Lcom/asus/vibe/item/VibeParam;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/vibe/item/VibeItem_Cont;

    iput-object v1, v2, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.vibe.action.VIEW_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.asus.vibe.PARAM"

    new-instance v2, Lcom/asus/vibe/item/VibeItemParcelable;

    iget-object v3, p0, Lcom/asus/vibe2/Frag_TabApi$2;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v3, v3, Lcom/asus/vibe2/Frag_TabApi;->mParam:Lcom/asus/vibe/item/VibeParam;

    invoke-direct {v2, v3}, Lcom/asus/vibe/item/VibeItemParcelable;-><init>(Lcom/asus/vibe/item/VibeItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lcom/asus/vibe2/Frag_TabApi$2;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    invoke-virtual {v1, v0}, Lcom/asus/vibe2/Frag_TabApi;->startActivity(Landroid/content/Intent;)V

    .line 94
    const/4 v0, 0x0

    .line 95
    return-void
.end method
