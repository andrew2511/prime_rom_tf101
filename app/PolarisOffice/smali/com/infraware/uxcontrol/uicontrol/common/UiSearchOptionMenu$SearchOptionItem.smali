.class public Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionItem;
.super Ljava/lang/Object;
.source "UiSearchOptionMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchOptionItem"
.end annotation


# instance fields
.field public m_bChecked:Z

.field public m_szName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "a_szName"
    .parameter "a_bChecked"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchOptionMenu$SearchOptionItem;->m_szName:Ljava/lang/String;

    .line 106
    return-void
.end method
