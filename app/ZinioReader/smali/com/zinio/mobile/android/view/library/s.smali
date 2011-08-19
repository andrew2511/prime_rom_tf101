.class final Lcom/zinio/mobile/android/view/library/s;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/library/g;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/library/g;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/zinio/mobile/android/view/library/s;->a:Lcom/zinio/mobile/android/view/library/g;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/s;->a:Lcom/zinio/mobile/android/view/library/g;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/g;->notifyDataSetChanged()V

    .line 110
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/s;->a:Lcom/zinio/mobile/android/view/library/g;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/g;->notifyDataSetInvalidated()V

    .line 115
    return-void
.end method
