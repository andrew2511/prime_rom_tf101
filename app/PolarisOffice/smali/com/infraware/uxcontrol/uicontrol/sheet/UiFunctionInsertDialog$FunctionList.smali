.class public Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionInsertDialog$FunctionList;
.super Ljava/lang/Object;
.source "UiFunctionInsertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionInsertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FunctionList"
.end annotation


# instance fields
.field m_oFunctionComment:[Ljava/lang/String;

.field m_oFunctionName:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;II)V
    .locals 2
    .parameter "m_oActivity"
    .parameter "a_nFunctionNameSringArrayId"
    .parameter "a_nFunctionCommentStringArrayId"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    .local v0, oResource:Landroid/content/res/Resources;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionInsertDialog$FunctionList;->m_oFunctionName:[Ljava/lang/String;

    .line 59
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionInsertDialog$FunctionList;->m_oFunctionComment:[Ljava/lang/String;

    .line 60
    return-void
.end method
