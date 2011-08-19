.class final Lcom/zinio/mobile/android/view/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;


# direct methods
.method synthetic constructor <init>(Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 424
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zinio/mobile/android/view/aw;-><init>(Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/zinio/mobile/android/view/aw;->a:Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 429
    iget-object v0, p0, Lcom/zinio/mobile/android/view/aw;->a:Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->a(Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;Z)V

    .line 430
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 431
    return-void
.end method
