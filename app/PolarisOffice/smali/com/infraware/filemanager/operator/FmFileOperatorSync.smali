.class public Lcom/infraware/filemanager/operator/FmFileOperatorSync;
.super Ljava/lang/Object;
.source "FmFileOperatorSync.java"


# static fields
.field private static m_bAsyncOperation:Z

.field private static m_listAsyncOperationName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static m_nAsyncOperationCommand:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

.field private static m_nAsyncOperationNameCount:I

.field private static m_nCurrentIteratorIndex:I

.field private static m_nErrorCode:I

.field private static m_nFailItemCount:I

.field private static m_nSuccessItemCount:I

.field private static m_oListIterator:Ljava/util/Iterator;

.field private static m_oOriginOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

.field private static m_oTargetOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

.field private static m_strAsyncOperationFileExtType:I

.field private static m_strAsyncOperationName:Ljava/lang/String;

.field private static m_strCurrentIteratorNode:Ljava/lang/String;

.field private static m_strNewFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_bAsyncOperation:Z

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateListIterator()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_listAsyncOperationName:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_listAsyncOperationName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 60
    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_listAsyncOperationName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sput-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_oListIterator:Ljava/util/Iterator;

    .line 61
    sput v1, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_nCurrentIteratorIndex:I

    .line 62
    sput v1, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_nSuccessItemCount:I

    .line 63
    sput v1, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_nFailItemCount:I

    .line 64
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static DestroyListIterator()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_oListIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x0

    sput-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_oListIterator:Ljava/util/Iterator;

    .line 100
    :cond_0
    sput v1, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_nCurrentIteratorIndex:I

    .line 101
    sput v1, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_nSuccessItemCount:I

    .line 102
    sput v1, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_nFailItemCount:I

    .line 103
    return-void
.end method

.method public static advanceIterator()V
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_oListIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_oListIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_strCurrentIteratorNode:Ljava/lang/String;

    .line 83
    sget v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_nCurrentIteratorIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_nCurrentIteratorIndex:I

    .line 85
    :cond_0
    return-void
.end method

.method public static clearAsyncOperation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 142
    sput-boolean v2, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_bAsyncOperation:Z

    .line 143
    sput-object v1, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_oOriginOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    .line 144
    sget-object v0, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_None:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    sput-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_nAsyncOperationCommand:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 145
    sput-object v1, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_strAsyncOperationName:Ljava/lang/String;

    .line 146
    sput-object v1, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_listAsyncOperationName:Ljava/util/List;

    .line 147
    sput v2, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_nAsyncOperationNameCount:I

    .line 148
    const/4 v0, 0x1

    sput v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_nErrorCode:I

    .line 149
    return-void
.end method

.method public static clearAsyncOperationFirstName()V
    .locals 2

    .prologue
    .line 161
    sget-boolean v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_bAsyncOperation:Z

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 164
    :cond_0
    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_listAsyncOperationName:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getAsyncOperation()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_bAsyncOperation:Z

    return v0
.end method

.method public static getAsyncOperationCommand()Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_nAsyncOperationCommand:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    return-object v0
.end method

.method public static getAsyncOperationFirstName()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    sget-boolean v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_bAsyncOperation:Z

    if-nez v0, :cond_0

    move-object v0, v1

    .line 158
    :goto_0
    return-object v0

    .line 155
    :cond_0
    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_listAsyncOperationName:Ljava/util/List;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_listAsyncOperationName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 156
    goto :goto_0

    .line 158
    :cond_2
    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_listAsyncOperationName:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static getAsyncOperationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_bAsyncOperation:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_strAsyncOperationName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getAsyncOperationNameRemainCount()I
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_listAsyncOperationName:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_listAsyncOperationName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public static getAsyncOperationNameTotalCount()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_nAsyncOperationNameCount:I

    return v0
.end method

.method public static getAsyncOperator()Lcom/infraware/filemanager/operator/FmFileOperator;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_oOriginOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    return-object v0
.end method

.method public static getAsyncOperatorNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_listAsyncOperationName:Ljava/util/List;

    return-object v0
.end method

.method public static getAsyncTargetOperator()Lcom/infraware/filemanager/operator/FmFileOperator;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_oTargetOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    return-object v0
.end method

.method public static getCurrentIteratorNode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_strCurrentIteratorNode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_strCurrentIteratorNode:Ljava/lang/String;

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCurrentTransferCount()I
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_listAsyncOperationName:Ljava/util/List;

    if-nez v0, :cond_0

    .line 173
    const/4 v0, 0x0

    .line 174
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_listAsyncOperationName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public static getErrorCode()I
    .locals 1

    .prologue
    .line 182
    sget v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_nErrorCode:I

    return v0
.end method

.method public static getFailCount()I
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_oListIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 136
    sget v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_nFailItemCount:I

    .line 138
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIteratorIndex()I
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_oListIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 108
    sget v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_nCurrentIteratorIndex:I

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMaxTransferCount()I
    .locals 1

    .prologue
    .line 168
    sget v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_nAsyncOperationNameCount:I

    return v0
.end method

.method public static getNewFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_strNewFileName:Ljava/lang/String;

    return-object v0
.end method

.method public static getSuccessCount()I
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_oListIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 128
    sget v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_nSuccessItemCount:I

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasListIteratorNext()Z
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_oListIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_oListIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static increaseFailCount()V
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_oListIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 122
    sget v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_nFailItemCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_nFailItemCount:I

    .line 123
    :cond_0
    return-void
.end method

.method public static increaseSuccessCount()V
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_oListIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 116
    sget v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_nSuccessItemCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_nSuccessItemCount:I

    .line 117
    :cond_0
    return-void
.end method

.method public static setAsyncOperation(Lcom/infraware/filemanager/operator/FmFileOperator;Lcom/infraware/filemanager/operator/FmFileOperator;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .parameter "a_oOriginOperator"
    .parameter "a_oTargetOperator"
    .parameter "a_eCommand"
    .parameter "a_strOperationName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/infraware/filemanager/operator/FmFileOperator;",
            "Lcom/infraware/filemanager/operator/FmFileOperator;",
            "Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p4, a_listOperationName:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 38
    sget-boolean v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_bAsyncOperation:Z

    if-eqz v0, :cond_0

    move v0, v2

    .line 53
    :goto_0
    return v0

    .line 40
    :cond_0
    sput-boolean v1, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_bAsyncOperation:Z

    .line 41
    sput-object p0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_oOriginOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    .line 42
    sput-object p1, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_oTargetOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    .line 43
    sput-object p2, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_nAsyncOperationCommand:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 44
    sput-object p3, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_strAsyncOperationName:Ljava/lang/String;

    .line 45
    sput-object p4, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_listAsyncOperationName:Ljava/util/List;

    .line 46
    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_listAsyncOperationName:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 47
    sget-object v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_listAsyncOperationName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_nAsyncOperationNameCount:I

    .line 51
    :goto_1
    sput v1, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_nErrorCode:I

    move v0, v1

    .line 53
    goto :goto_0

    .line 49
    :cond_1
    sput v2, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_nAsyncOperationNameCount:I

    goto :goto_1
.end method

.method public static setErrorCode(I)V
    .locals 0
    .parameter "a_nErrorCode"

    .prologue
    .line 178
    sput p0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_nErrorCode:I

    .line 179
    return-void
.end method

.method public static setNewFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "a_strFileName"

    .prologue
    .line 187
    sput-object p0, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->m_strNewFileName:Ljava/lang/String;

    .line 188
    return-void
.end method
