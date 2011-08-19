.class Lcom/infraware/common/UxDocEditorBase$GoogleSearchButtonListener;
.super Ljava/lang/Object;
.source "UxDocEditorBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/UxDocEditorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GoogleSearchButtonListener"
.end annotation


# instance fields
.field private m_oDocEditorBase:Lcom/infraware/common/UxDocEditorBase;

.field private m_strSearchText:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/infraware/common/UxDocEditorBase;)V
    .locals 0
    .parameter "a_oDocEditorBase"

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    iput-object p1, p0, Lcom/infraware/common/UxDocEditorBase$GoogleSearchButtonListener;->m_oDocEditorBase:Lcom/infraware/common/UxDocEditorBase;

    .line 571
    return-void
.end method

.method synthetic constructor <init>(Lcom/infraware/common/UxDocEditorBase;Lcom/infraware/common/UxDocEditorBase$GoogleSearchButtonListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 569
    invoke-direct {p0, p1}, Lcom/infraware/common/UxDocEditorBase$GoogleSearchButtonListener;-><init>(Lcom/infraware/common/UxDocEditorBase;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 578
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 579
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "query"

    iget-object v2, p0, Lcom/infraware/common/UxDocEditorBase$GoogleSearchButtonListener;->m_strSearchText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    iget-object v1, p0, Lcom/infraware/common/UxDocEditorBase$GoogleSearchButtonListener;->m_oDocEditorBase:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v1, v0}, Lcom/infraware/common/UxDocEditorBase;->startActivity(Landroid/content/Intent;)V

    .line 581
    iget-object v1, p0, Lcom/infraware/common/UxDocEditorBase$GoogleSearchButtonListener;->m_oDocEditorBase:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v1}, Lcom/infraware/common/UxDocEditorBase;->finishActionMode()V

    .line 582
    return-void
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 0
    .parameter "a_strSearchText"

    .prologue
    .line 574
    iput-object p1, p0, Lcom/infraware/common/UxDocEditorBase$GoogleSearchButtonListener;->m_strSearchText:Ljava/lang/String;

    .line 575
    return-void
.end method
