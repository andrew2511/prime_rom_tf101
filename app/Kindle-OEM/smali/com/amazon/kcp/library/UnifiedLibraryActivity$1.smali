.class Lcom/amazon/kcp/library/UnifiedLibraryActivity$1;
.super Ljava/lang/Object;
.source "UnifiedLibraryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/UnifiedLibraryActivity;->initializeLibraryFilterUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/UnifiedLibraryActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/UnifiedLibraryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$1;->this$0:Lcom/amazon/kcp/library/UnifiedLibraryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$1;->this$0:Lcom/amazon/kcp/library/UnifiedLibraryActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->access$100(Lcom/amazon/kcp/library/UnifiedLibraryActivity;)V

    .line 245
    return-void
.end method
