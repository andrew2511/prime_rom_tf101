.class Lcom/asus/vibe2/debug/RegionSelector$1;
.super Ljava/lang/Object;
.source "RegionSelector.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/vibe2/debug/RegionSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/vibe2/debug/RegionSelector;


# direct methods
.method constructor <init>(Lcom/asus/vibe2/debug/RegionSelector;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/asus/vibe2/debug/RegionSelector$1;->this$0:Lcom/asus/vibe2/debug/RegionSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 48
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    .local v0, region:Ljava/lang/String;
    sput-object v0, Lcom/asus/vibe2/Vibe;->DUMMY_REGION:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/asus/vibe2/debug/RegionSelector$1;->this$0:Lcom/asus/vibe2/debug/RegionSelector;

    invoke-virtual {v1}, Lcom/asus/vibe2/debug/RegionSelector;->finish()V

    .line 51
    return-void
.end method
