.class Lcom/android/launcher2/AllAppsTabbed$1;
.super Ljava/lang/Object;
.source "AllAppsTabbed.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AllAppsTabbed;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AllAppsTabbed;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AllAppsTabbed;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/launcher2/AllAppsTabbed$1;->this$0:Lcom/android/launcher2/AllAppsTabbed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .parameter "tag"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher2/AllAppsTabbed$1;->this$0:Lcom/android/launcher2/AllAppsTabbed;

    invoke-static {v0}, Lcom/android/launcher2/AllAppsTabbed;->access$000(Lcom/android/launcher2/AllAppsTabbed;)Lcom/android/launcher2/AllAppsPagedView;

    move-result-object v0

    return-object v0
.end method
