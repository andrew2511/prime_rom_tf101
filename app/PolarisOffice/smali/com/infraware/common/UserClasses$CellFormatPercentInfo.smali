.class public Lcom/infraware/common/UserClasses$CellFormatPercentInfo;
.super Ljava/lang/Object;
.source "UserClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/UserClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CellFormatPercentInfo"
.end annotation


# instance fields
.field public m_nPointerIndex:I

.field final synthetic this$0:Lcom/infraware/common/UserClasses;


# direct methods
.method public constructor <init>(Lcom/infraware/common/UserClasses;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/infraware/common/UserClasses$CellFormatPercentInfo;->this$0:Lcom/infraware/common/UserClasses;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/common/UserClasses$CellFormatPercentInfo;->m_nPointerIndex:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/common/UserClasses$CellFormatPercentInfo;->m_nPointerIndex:I

    .line 86
    return-void
.end method
