.class Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewCache"
.end annotation


# instance fields
.field public actionIcon:Landroid/widget/ImageView;

.field public data:Landroid/widget/TextView;

.field public footer:Landroid/widget/TextView;

.field public inKindDivider:Landroid/view/View;

.field public kind:Landroid/widget/TextView;

.field public kindDivider:Landroid/view/View;

.field public lineBelowLast:Landroid/view/View;

.field public presenceIcon:Landroid/widget/ImageView;

.field public secondaryActionButton:Landroid/widget/ImageView;

.field public secondaryActionDivider:Landroid/view/View;

.field public type:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 847
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;-><init>()V

    return-void
.end method
