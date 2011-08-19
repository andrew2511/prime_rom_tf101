.class public Lcom/infraware/PolarisOffice;
.super Landroid/app/Application;
.source "PolarisOffice.java"


# static fields
.field public static m_oApplication:Lcom/infraware/PolarisOffice;

.field public static m_oCommonToast:Landroid/widget/Toast;

.field public static m_oContext:Landroid/content/Context;

.field public static m_oCurrentViewer:Lcom/infraware/common/UxDocViewerBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    sput-object v0, Lcom/infraware/PolarisOffice;->m_oApplication:Lcom/infraware/PolarisOffice;

    .line 13
    sput-object v0, Lcom/infraware/PolarisOffice;->m_oCommonToast:Landroid/widget/Toast;

    .line 14
    sput-object v0, Lcom/infraware/PolarisOffice;->m_oContext:Landroid/content/Context;

    .line 16
    sput-object v0, Lcom/infraware/PolarisOffice;->m_oCurrentViewer:Lcom/infraware/common/UxDocViewerBase;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 21
    sput-object p0, Lcom/infraware/PolarisOffice;->m_oApplication:Lcom/infraware/PolarisOffice;

    .line 22
    return-void
.end method

.method public static getInstance()Lcom/infraware/PolarisOffice;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/infraware/PolarisOffice;->m_oApplication:Lcom/infraware/PolarisOffice;

    return-object v0
.end method

.method public static showToast(IZ)V
    .locals 2
    .parameter "a_nStringResId"
    .parameter "a_bShowLong"

    .prologue
    .line 49
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 51
    .local v0, nPeriod:I
    :goto_0
    sget-object v1, Lcom/infraware/PolarisOffice;->m_oCommonToast:Landroid/widget/Toast;

    if-nez v1, :cond_1

    .line 52
    sget-object v1, Lcom/infraware/PolarisOffice;->m_oContext:Landroid/content/Context;

    invoke-static {v1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/infraware/PolarisOffice;->m_oCommonToast:Landroid/widget/Toast;

    .line 60
    :goto_1
    sget-object v1, Lcom/infraware/PolarisOffice;->m_oCommonToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 61
    return-void

    .line 49
    .end local v0           #nPeriod:I
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 55
    .restart local v0       #nPeriod:I
    :cond_1
    sget-object v1, Lcom/infraware/PolarisOffice;->m_oCommonToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    sget-object v1, Lcom/infraware/PolarisOffice;->m_oCommonToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 57
    :cond_2
    sget-object v1, Lcom/infraware/PolarisOffice;->m_oCommonToast:Landroid/widget/Toast;

    invoke-virtual {v1, p0}, Landroid/widget/Toast;->setText(I)V

    .line 58
    sget-object v1, Lcom/infraware/PolarisOffice;->m_oCommonToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_1
.end method


# virtual methods
.method public getCurrentViewer()Lcom/infraware/common/UxDocViewerBase;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/infraware/PolarisOffice;->m_oCurrentViewer:Lcom/infraware/common/UxDocViewerBase;

    return-object v0
.end method

.method public isDebuggable()Z
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/infraware/PolarisOffice;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 41
    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 34
    invoke-virtual {p0}, Lcom/infraware/PolarisOffice;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/infraware/PolarisOffice;->m_oContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public setCurrentViewer(Lcom/infraware/common/UxDocViewerBase;)V
    .locals 0
    .parameter "a_oViewer"

    .prologue
    .line 74
    sput-object p1, Lcom/infraware/PolarisOffice;->m_oCurrentViewer:Lcom/infraware/common/UxDocViewerBase;

    .line 75
    return-void
.end method
