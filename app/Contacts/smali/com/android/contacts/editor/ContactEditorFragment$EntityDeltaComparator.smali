.class Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntityDeltaComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/contacts/model/EntityDelta;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1031
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;)I
    .locals 19
    .parameter "one"
    .parameter "two"

    .prologue
    .line 1038
    invoke-virtual/range {p1 .. p2}, Lcom/android/contacts/model/EntityDelta;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1039
    const/4 v15, 0x0

    .line 1105
    :goto_0
    return v15

    .line 1042
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/contacts/editor/ContactEditorFragment;->access$300(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    .line 1043
    .local v2, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v15

    const-string v16, "account_type"

    invoke-virtual/range {v15 .. v16}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1044
    .local v1, accountType2:Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v12

    .line 1045
    .local v12, type1:Lcom/android/contacts/model/AccountType;
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v15

    const-string v16, "account_type"

    invoke-virtual/range {v15 .. v16}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1046
    invoke-virtual {v2, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v13

    .line 1049
    .local v13, type2:Lcom/android/contacts/model/AccountType;
    iget-boolean v15, v12, Lcom/android/contacts/model/AccountType;->readOnly:Z

    if-eqz v15, :cond_1

    iget-boolean v15, v13, Lcom/android/contacts/model/AccountType;->readOnly:Z

    if-nez v15, :cond_1

    .line 1050
    const/4 v15, 0x1

    goto :goto_0

    .line 1051
    :cond_1
    iget-boolean v15, v12, Lcom/android/contacts/model/AccountType;->readOnly:Z

    if-nez v15, :cond_2

    iget-boolean v15, v13, Lcom/android/contacts/model/AccountType;->readOnly:Z

    if-eqz v15, :cond_2

    .line 1052
    const/4 v15, -0x1

    goto :goto_0

    .line 1056
    :cond_2
    const/4 v8, 0x0

    .line 1057
    .local v8, skipAccountTypeCheck:Z
    instance-of v3, v12, Lcom/android/contacts/model/GoogleAccountType;

    .line 1058
    .local v3, isGoogleAccount1:Z
    instance-of v4, v13, Lcom/android/contacts/model/GoogleAccountType;

    .line 1059
    .local v4, isGoogleAccount2:Z
    if-eqz v3, :cond_3

    if-nez v4, :cond_3

    .line 1060
    const/4 v15, -0x1

    goto :goto_0

    .line 1061
    :cond_3
    if-nez v3, :cond_4

    if-eqz v4, :cond_4

    .line 1062
    const/4 v15, 0x1

    goto :goto_0

    .line 1063
    :cond_4
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    .line 1064
    const/4 v8, 0x1

    .line 1068
    :cond_5
    if-nez v8, :cond_8

    .line 1069
    iget-object v15, v12, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    if-nez v15, :cond_6

    .line 1070
    const/4 v15, 0x1

    goto :goto_0

    .line 1074
    :cond_6
    iget-object v15, v13, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    if-nez v15, :cond_7

    .line 1075
    const/4 v15, -0x1

    goto :goto_0

    .line 1078
    :cond_7
    iget-object v15, v12, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object v0, v13

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    .line 1079
    .local v14, value:I
    if-eqz v14, :cond_8

    move v15, v14

    .line 1080
    goto :goto_0

    .line 1085
    .end local v14           #value:I
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v7

    .line 1086
    .local v7, oneValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v15, "account_name"

    invoke-virtual {v7, v15}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1087
    .local v5, oneAccount:Ljava/lang/String;
    if-nez v5, :cond_9

    const-string v5, ""

    .line 1088
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v11

    .line 1089
    .local v11, twoValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v15, "account_name"

    invoke-virtual {v11, v15}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1090
    .local v9, twoAccount:Ljava/lang/String;
    if-nez v9, :cond_a

    const-string v9, ""

    .line 1091
    :cond_a
    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    .line 1092
    .restart local v14       #value:I
    if-eqz v14, :cond_b

    move v15, v14

    .line 1093
    goto/16 :goto_0

    .line 1097
    :cond_b
    const-string v15, "_id"

    invoke-virtual {v7, v15}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 1098
    .local v6, oneId:Ljava/lang/Long;
    const-string v15, "_id"

    invoke-virtual {v11, v15}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    .line 1099
    .local v10, twoId:Ljava/lang/Long;
    if-nez v6, :cond_c

    .line 1100
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 1101
    :cond_c
    if-nez v10, :cond_d

    .line 1102
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1105
    :cond_d
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    sub-long v15, v15, v17

    long-to-int v15, v15

    goto/16 :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1031
    check-cast p1, Lcom/android/contacts/model/EntityDelta;

    .end local p1
    check-cast p2, Lcom/android/contacts/model/EntityDelta;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;->compare(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;)I

    move-result v0

    return v0
.end method
