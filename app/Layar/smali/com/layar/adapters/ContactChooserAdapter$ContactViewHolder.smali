.class public Lcom/layar/adapters/ContactChooserAdapter$ContactViewHolder;
.super Ljava/lang/Object;
.source "ContactChooserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/adapters/ContactChooserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactViewHolder"
.end annotation


# instance fields
.field public contactCheckbox:Landroid/widget/CheckBox;

.field public contactListItem:Landroid/widget/LinearLayout;

.field public contactName:Landroid/widget/TextView;

.field public isChecked:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
