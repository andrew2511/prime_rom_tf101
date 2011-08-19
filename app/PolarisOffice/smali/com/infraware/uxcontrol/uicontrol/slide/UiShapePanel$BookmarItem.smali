.class public Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel$BookmarItem;
.super Ljava/lang/Object;
.source "UiShapePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BookmarItem"
.end annotation


# instance fields
.field public m_strName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "a_strName"

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel$BookmarItem;->m_strName:Ljava/lang/String;

    .line 264
    return-void
.end method
