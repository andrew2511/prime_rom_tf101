.class public Lcom/layar/ui/navigationbar/NavigationBar$ToolbarButton;
.super Ljava/lang/Object;
.source "NavigationBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/ui/navigationbar/NavigationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToolbarButton"
.end annotation


# instance fields
.field public clickListener:Landroid/view/View$OnClickListener;

.field public iconRes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
