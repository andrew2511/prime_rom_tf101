.class public Lcom/android/commands/am/Am;
.super Ljava/lang/Object;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/am/Am$1;,
        Lcom/android/commands/am/Am$InstrumentationWatcher;,
        Lcom/android/commands/am/Am$IntentReceiver;,
        Lcom/android/commands/am/Am$MyActivityController;
    }
.end annotation


# static fields
.field private static final FATAL_ERROR_CODE:Ljava/lang/String; = "Error type 1"

.field private static final NO_CLASS_ERROR_CODE:Ljava/lang/String; = "Error type 3"

.field private static final NO_SYSTEM_ERROR_CODE:Ljava/lang/String; = "Error type 2"


# instance fields
.field private mAm:Landroid/app/IActivityManager;

.field private mArgs:[Ljava/lang/String;

.field private mCurArgData:Ljava/lang/String;

.field private mDebugOption:Z

.field private mNextArg:I

.field private mWaitOption:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v0, p0, Lcom/android/commands/am/Am;->mDebugOption:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/commands/am/Am;->mWaitOption:Z

    .line 880
    return-void
.end method

.method static synthetic access$200(Lcom/android/commands/am/Am;)Landroid/app/IActivityManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 5
    .parameter "args"

    .prologue
    .line 71
    :try_start_0
    new-instance v1, Lcom/android/commands/am/Am;

    invoke-direct {v1}, Lcom/android/commands/am/Am;-><init>()V

    invoke-direct {v1, p0}, Lcom/android/commands/am/Am;->run([Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_2b

    .line 79
    :goto_8
    return-void

    .line 72
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 73
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/commands/am/Am;->showUsage()V

    .line 74
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 75
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2b
    move-exception v1

    move-object v0, v1

    .line 76
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_8
.end method

.method private makeIntent()Landroid/content/Intent;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 122
    .local v8, intent:Landroid/content/Intent;
    const/4 v6, 0x0

    .line 124
    .local v6, hasIntentInfo:Z
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/commands/am/Am;->mDebugOption:Z

    .line 125
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/commands/am/Am;->mWaitOption:Z

    .line 126
    const/4 v5, 0x0

    .line 127
    .local v5, data:Landroid/net/Uri;
    const/16 v16, 0x0

    .line 130
    .local v16, type:Ljava/lang/String;
    :goto_19
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    move-result-object v13

    .local v13, opt:Ljava/lang/String;
    if-eqz v13, :cond_3b2

    .line 131
    const-string v19, "-a"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_36

    .line 132
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v19

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const/4 v6, 0x1

    goto :goto_19

    .line 134
    :cond_36
    const-string v19, "-d"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4b

    .line 135
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 136
    const/4 v6, 0x1

    goto :goto_19

    .line 137
    :cond_4b
    const-string v19, "-t"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5c

    .line 138
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v16

    .line 139
    const/4 v6, 0x1

    goto :goto_19

    .line 140
    :cond_5c
    const-string v19, "-c"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_73

    .line 141
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v19

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const/4 v6, 0x1

    goto :goto_19

    .line 143
    :cond_73
    const-string v19, "-e"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_89

    const-string v19, "--es"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9a

    .line 144
    :cond_89
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v10

    .line 145
    .local v10, key:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v18

    .line 146
    .local v18, value:Ljava/lang/String;
    move-object v0, v8

    move-object v1, v10

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const/4 v6, 0x1

    .line 148
    goto :goto_19

    .end local v10           #key:Ljava/lang/String;
    .end local v18           #value:Ljava/lang/String;
    :cond_9a
    const-string v19, "--esn"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b2

    .line 149
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v10

    .line 150
    .restart local v10       #key:Ljava/lang/String;
    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const/4 v6, 0x1

    .line 152
    goto/16 :goto_19

    .end local v10           #key:Ljava/lang/String;
    :cond_b2
    const-string v19, "--ei"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d3

    .line 153
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v10

    .line 154
    .restart local v10       #key:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v18

    .line 155
    .restart local v18       #value:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    move-object v0, v8

    move-object v1, v10

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 156
    const/4 v6, 0x1

    .line 157
    goto/16 :goto_19

    .end local v10           #key:Ljava/lang/String;
    .end local v18           #value:Ljava/lang/String;
    :cond_d3
    const-string v19, "--eia"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_114

    .line 158
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v10

    .line 159
    .restart local v10       #key:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v18

    .line 160
    .restart local v18       #value:Ljava/lang/String;
    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 161
    .local v15, strings:[Ljava/lang/String;
    move-object v0, v15

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object v11, v0

    .line 162
    .local v11, list:[I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_f6
    move-object v0, v15

    array-length v0, v0

    move/from16 v19, v0

    move v0, v7

    move/from16 v1, v19

    if-ge v0, v1, :cond_10e

    .line 163
    aget-object v19, v15, v7

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aput v19, v11, v7

    .line 162
    add-int/lit8 v7, v7, 0x1

    goto :goto_f6

    .line 165
    :cond_10e
    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 166
    const/4 v6, 0x1

    .line 167
    goto/16 :goto_19

    .end local v7           #i:I
    .end local v10           #key:Ljava/lang/String;
    .end local v11           #list:[I
    .end local v15           #strings:[Ljava/lang/String;
    .end local v18           #value:Ljava/lang/String;
    :cond_114
    const-string v19, "--el"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_135

    .line 168
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v10

    .line 169
    .restart local v10       #key:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v18

    .line 170
    .restart local v18       #value:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    move-object v0, v8

    move-object v1, v10

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 171
    const/4 v6, 0x1

    .line 172
    goto/16 :goto_19

    .end local v10           #key:Ljava/lang/String;
    .end local v18           #value:Ljava/lang/String;
    :cond_135
    const-string v19, "--ela"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_176

    .line 173
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v10

    .line 174
    .restart local v10       #key:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v18

    .line 175
    .restart local v18       #value:Ljava/lang/String;
    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 176
    .restart local v15       #strings:[Ljava/lang/String;
    move-object v0, v15

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [J

    move-object v11, v0

    .line 177
    .local v11, list:[J
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_158
    move-object v0, v15

    array-length v0, v0

    move/from16 v19, v0

    move v0, v7

    move/from16 v1, v19

    if-ge v0, v1, :cond_170

    .line 178
    aget-object v19, v15, v7

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    aput-wide v19, v11, v7

    .line 177
    add-int/lit8 v7, v7, 0x1

    goto :goto_158

    .line 180
    :cond_170
    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 181
    const/4 v6, 0x1

    .line 182
    goto/16 :goto_19

    .end local v7           #i:I
    .end local v10           #key:Ljava/lang/String;
    .end local v11           #list:[J
    .end local v15           #strings:[Ljava/lang/String;
    .end local v18           #value:Ljava/lang/String;
    :cond_176
    const-string v19, "--ez"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_197

    .line 183
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v10

    .line 184
    .restart local v10       #key:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v18

    .line 185
    .restart local v18       #value:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v19

    move-object v0, v8

    move-object v1, v10

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 186
    const/4 v6, 0x1

    .line 187
    goto/16 :goto_19

    .end local v10           #key:Ljava/lang/String;
    .end local v18           #value:Ljava/lang/String;
    :cond_197
    const-string v19, "-n"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1ce

    .line 188
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v14

    .line 189
    .local v14, str:Ljava/lang/String;
    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 190
    .local v4, cn:Landroid/content/ComponentName;
    if-nez v4, :cond_1c8

    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Bad component name: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 191
    :cond_1c8
    invoke-virtual {v8, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 192
    const/4 v6, 0x1

    .line 193
    goto/16 :goto_19

    .end local v4           #cn:Landroid/content/ComponentName;
    .end local v14           #str:Ljava/lang/String;
    :cond_1ce
    const-string v19, "-f"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1ed

    .line 194
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v14

    .line 195
    .restart local v14       #str:Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_19

    .line 196
    .end local v14           #str:Ljava/lang/String;
    :cond_1ed
    const-string v19, "--grant-read-uri-permission"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_202

    .line 197
    const/16 v19, 0x1

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_19

    .line 198
    :cond_202
    const-string v19, "--grant-write-uri-permission"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_217

    .line 199
    const/16 v19, 0x2

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_19

    .line 200
    :cond_217
    const-string v19, "--debug-log-resolution"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_22c

    .line 201
    const/16 v19, 0x8

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_19

    .line 202
    :cond_22c
    const-string v19, "--activity-brought-to-front"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_241

    .line 203
    const/high16 v19, 0x40

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_19

    .line 204
    :cond_241
    const-string v19, "--activity-clear-top"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_256

    .line 205
    const/high16 v19, 0x400

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_19

    .line 206
    :cond_256
    const-string v19, "--activity-clear-when-task-reset"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_26b

    .line 207
    const/high16 v19, 0x8

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_19

    .line 208
    :cond_26b
    const-string v19, "--activity-exclude-from-recents"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_280

    .line 209
    const/high16 v19, 0x80

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_19

    .line 210
    :cond_280
    const-string v19, "--activity-launched-from-history"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_295

    .line 211
    const/high16 v19, 0x10

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_19

    .line 212
    :cond_295
    const-string v19, "--activity-multiple-task"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2aa

    .line 213
    const/high16 v19, 0x800

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_19

    .line 214
    :cond_2aa
    const-string v19, "--activity-no-animation"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2bf

    .line 215
    const/high16 v19, 0x1

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_19

    .line 216
    :cond_2bf
    const-string v19, "--activity-no-history"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2d4

    .line 217
    const/high16 v19, 0x4000

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_19

    .line 218
    :cond_2d4
    const-string v19, "--activity-no-user-action"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2e9

    .line 219
    const/high16 v19, 0x4

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_19

    .line 220
    :cond_2e9
    const-string v19, "--activity-previous-is-top"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2fe

    .line 221
    const/high16 v19, 0x100

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_19

    .line 222
    :cond_2fe
    const-string v19, "--activity-reorder-to-front"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_313

    .line 223
    const/high16 v19, 0x2

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_19

    .line 224
    :cond_313
    const-string v19, "--activity-reset-task-if-needed"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_328

    .line 225
    const/high16 v19, 0x20

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_19

    .line 226
    :cond_328
    const-string v19, "--activity-single-top"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_33d

    .line 227
    const/high16 v19, 0x2000

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_19

    .line 228
    :cond_33d
    const-string v19, "--receiver-registered-only"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_352

    .line 229
    const/high16 v19, 0x4000

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_19

    .line 230
    :cond_352
    const-string v19, "--receiver-replace-pending"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_367

    .line 231
    const/high16 v19, 0x2000

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_19

    .line 232
    :cond_367
    const-string v19, "-D"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_37c

    .line 233
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/commands/am/Am;->mDebugOption:Z

    goto/16 :goto_19

    .line 234
    :cond_37c
    const-string v19, "-W"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_391

    .line 235
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/commands/am/Am;->mWaitOption:Z

    goto/16 :goto_19

    .line 237
    :cond_391
    sget-object v19, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error: Unknown option: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/android/commands/am/Am;->showUsage()V

    .line 239
    const/16 v19, 0x0

    .line 265
    .end local p0
    :goto_3b1
    return-object v19

    .line 242
    .restart local p0
    :cond_3b2
    move-object v0, v8

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArg()Ljava/lang/String;

    move-result-object v17

    .line 245
    .local v17, uri:Ljava/lang/String;
    if-eqz v17, :cond_414

    .line 246
    move-object v12, v8

    .line 247
    .local v12, oldIntent:Landroid/content/Intent;
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    .line 248
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_3da

    .line 249
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    :cond_3da
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    if-nez v19, :cond_3e6

    invoke-virtual {v12}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_3f6

    .line 252
    :cond_3e6
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    invoke-virtual {v12}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v20

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    :cond_3f6
    invoke-virtual {v12}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    .line 255
    .local v3, cats:Ljava/util/Set;
    if-eqz v3, :cond_413

    .line 256
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 257
    .end local p0
    .local v9, it:Ljava/util/Iterator;
    :goto_400
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_413

    .line 258
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_400

    .line 261
    .end local v9           #it:Ljava/util/Iterator;
    :cond_413
    const/4 v6, 0x1

    .line 264
    .end local v3           #cats:Ljava/util/Set;
    .end local v12           #oldIntent:Landroid/content/Intent;
    :cond_414
    if-nez v6, :cond_41e

    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "No intent supplied"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_41e
    move-object/from16 v19, v8

    .line 265
    goto :goto_3b1
.end method

.method private nextArg()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 986
    iget-object v1, p0, Lcom/android/commands/am/Am;->mCurArgData:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 987
    iget-object v0, p0, Lcom/android/commands/am/Am;->mCurArgData:Ljava/lang/String;

    .line 988
    .local v0, arg:Ljava/lang/String;
    iput-object v3, p0, Lcom/android/commands/am/Am;->mCurArgData:Ljava/lang/String;

    move-object v1, v0

    .line 993
    .end local v0           #arg:Ljava/lang/String;
    :goto_a
    return-object v1

    .line 990
    :cond_b
    iget v1, p0, Lcom/android/commands/am/Am;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/am/Am;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1d

    .line 991
    iget-object v1, p0, Lcom/android/commands/am/Am;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/am/Am;->mNextArg:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/commands/am/Am;->mNextArg:I

    aget-object v1, v1, v2

    goto :goto_a

    :cond_1d
    move-object v1, v3

    .line 993
    goto :goto_a
.end method

.method private nextArgRequired()Ljava/lang/String;
    .registers 6

    .prologue
    .line 998
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 999
    .local v0, arg:Ljava/lang/String;
    if-nez v0, :cond_2d

    .line 1000
    iget-object v2, p0, Lcom/android/commands/am/Am;->mArgs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/commands/am/Am;->mNextArg:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v1, v2, v3

    .line 1001
    .local v1, prev:Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Argument expected after \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1003
    .end local v1           #prev:Ljava/lang/String;
    :cond_2d
    return-object v0
.end method

.method private nextOption()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 957
    iget-object v2, p0, Lcom/android/commands/am/Am;->mCurArgData:Ljava/lang/String;

    if-eqz v2, :cond_2d

    .line 958
    iget-object v2, p0, Lcom/android/commands/am/Am;->mArgs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/commands/am/Am;->mNextArg:I

    sub-int/2addr v3, v5

    aget-object v1, v2, v3

    .line 959
    .local v1, prev:Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No argument expected after \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 961
    .end local v1           #prev:Ljava/lang/String;
    :cond_2d
    iget v2, p0, Lcom/android/commands/am/Am;->mNextArg:I

    iget-object v3, p0, Lcom/android/commands/am/Am;->mArgs:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_36

    move-object v2, v4

    .line 982
    :goto_35
    return-object v2

    .line 964
    :cond_36
    iget-object v2, p0, Lcom/android/commands/am/Am;->mArgs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/commands/am/Am;->mNextArg:I

    aget-object v0, v2, v3

    .line 965
    .local v0, arg:Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_46

    move-object v2, v4

    .line 966
    goto :goto_35

    .line 968
    :cond_46
    iget v2, p0, Lcom/android/commands/am/Am;->mNextArg:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/commands/am/Am;->mNextArg:I

    .line 969
    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    move-object v2, v4

    .line 970
    goto :goto_35

    .line 972
    :cond_56
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_7a

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_7a

    .line 973
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_76

    .line 974
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/commands/am/Am;->mCurArgData:Ljava/lang/String;

    .line 975
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_35

    .line 977
    :cond_76
    iput-object v4, p0, Lcom/android/commands/am/Am;->mCurArgData:Ljava/lang/String;

    move-object v2, v0

    .line 978
    goto :goto_35

    .line 981
    :cond_7a
    iput-object v4, p0, Lcom/android/commands/am/Am;->mCurArgData:Ljava/lang/String;

    move-object v2, v0

    .line 982
    goto :goto_35
.end method

.method private run([Ljava/lang/String;)V
    .registers 6
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 82
    array-length v1, p1

    if-ge v1, v2, :cond_8

    .line 83
    invoke-static {}, Lcom/android/commands/am/Am;->showUsage()V

    .line 118
    :goto_7
    return-void

    .line 87
    :cond_8
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    .line 88
    iget-object v1, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    if-nez v1, :cond_21

    .line 89
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error type 2"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    new-instance v1, Landroid/util/AndroidException;

    const-string v2, "Can\'t connect to activity manager; is the system running?"

    invoke-direct {v1, v2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_21
    iput-object p1, p0, Lcom/android/commands/am/Am;->mArgs:[Ljava/lang/String;

    .line 94
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 95
    .local v0, op:Ljava/lang/String;
    iput v2, p0, Lcom/android/commands/am/Am;->mNextArg:I

    .line 97
    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 98
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStart()V

    goto :goto_7

    .line 99
    :cond_34
    const-string v1, "startservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 100
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStartService()V

    goto :goto_7

    .line 101
    :cond_40
    const-string v1, "instrument"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 102
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runInstrument()V

    goto :goto_7

    .line 103
    :cond_4c
    const-string v1, "broadcast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 104
    invoke-direct {p0}, Lcom/android/commands/am/Am;->sendBroadcast()V

    goto :goto_7

    .line 105
    :cond_58
    const-string v1, "profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 106
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runProfile()V

    goto :goto_7

    .line 107
    :cond_64
    const-string v1, "dumpheap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 108
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runDumpHeap()V

    goto :goto_7

    .line 109
    :cond_70
    const-string v1, "monitor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 110
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runMonitor()V

    goto :goto_7

    .line 111
    :cond_7c
    const-string v1, "screen-compat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 112
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runScreenCompat()V

    goto :goto_7

    .line 113
    :cond_88
    const-string v1, "display-size"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 114
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runDisplaySize()V

    goto/16 :goto_7

    .line 116
    :cond_95
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private runDisplaySize()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 811
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 813
    .local v6, size:Ljava/lang/String;
    const-string v9, "reset"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 814
    const/4 v4, -0x1

    .local v4, n:I
    move v2, v4

    .line 834
    .local v2, m:I
    :goto_e
    if-ge v2, v4, :cond_13

    .line 835
    move v7, v2

    .line 836
    .local v7, tmp:I
    move v2, v4

    .line 837
    move v4, v7

    .line 840
    .end local v7           #tmp:I
    :cond_13
    const-string v9, "window"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v8

    .line 842
    .local v8, wm:Landroid/view/IWindowManager;
    if-nez v8, :cond_8c

    .line 843
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "Error type 2"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 844
    new-instance v9, Landroid/util/AndroidException;

    const-string v10, "Can\'t connect to window manager; is the system running?"

    invoke-direct {v9, v10}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 816
    .end local v2           #m:I
    .end local v4           #n:I
    .end local v8           #wm:Landroid/view/IWindowManager;
    :cond_2e
    const/16 v9, 0x78

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 817
    .local v0, div:I
    if-lez v0, :cond_3e

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    if-lt v0, v9, :cond_5a

    .line 818
    :cond_3e
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: bad size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 819
    invoke-static {}, Lcom/android/commands/am/Am;->showUsage()V

    .line 855
    .end local v0           #div:I
    :goto_59
    return-void

    .line 822
    .restart local v0       #div:I
    :cond_5a
    const/4 v9, 0x0

    invoke-virtual {v6, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 823
    .local v3, mstr:Ljava/lang/String;
    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 825
    .local v5, nstr:Ljava/lang/String;
    :try_start_65
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 826
    .restart local v2       #m:I
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/NumberFormatException; {:try_start_65 .. :try_end_6c} :catch_6e

    move-result v4

    .restart local v4       #n:I
    goto :goto_e

    .line 827
    .end local v2           #m:I
    .end local v4           #n:I
    :catch_6e
    move-exception v9

    move-object v1, v9

    .line 828
    .local v1, e:Ljava/lang/NumberFormatException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: bad number "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 829
    invoke-static {}, Lcom/android/commands/am/Am;->showUsage()V

    goto :goto_59

    .line 848
    .end local v0           #div:I
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v3           #mstr:Ljava/lang/String;
    .end local v5           #nstr:Ljava/lang/String;
    .restart local v2       #m:I
    .restart local v4       #n:I
    .restart local v8       #wm:Landroid/view/IWindowManager;
    :cond_8c
    if-ltz v2, :cond_96

    if-ltz v4, :cond_96

    .line 849
    :try_start_90
    invoke-interface {v8, v2, v4}, Landroid/view/IWindowManager;->setForcedDisplaySize(II)V

    goto :goto_59

    .line 853
    :catch_94
    move-exception v9

    goto :goto_59

    .line 851
    :cond_96
    invoke-interface {v8}, Landroid/view/IWindowManager;->clearForcedDisplaySize()V
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_99} :catch_94

    goto :goto_59
.end method

.method private runDumpHeap()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 467
    const-string v5, "-n"

    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    const/4 v5, 0x1

    move v3, v5

    .line 468
    .local v3, managed:Z
    :goto_e
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 469
    .local v4, process:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 470
    .local v2, heapFile:Ljava/lang/String;
    const/4 v1, 0x0

    .line 473
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_17
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x3c00

    invoke-static {v5, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_21} :catch_46

    move-result-object v1

    .line 483
    iget-object v5, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v5, v4, v3, v2, v1}, Landroid/app/IActivityManager;->dumpHeap(Ljava/lang/String;ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v5

    if-nez v5, :cond_60

    .line 484
    new-instance v5, Landroid/util/AndroidException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HEAP DUMP FAILED on process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 467
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #heapFile:Ljava/lang/String;
    .end local v3           #managed:Z
    .end local v4           #process:Ljava/lang/String;
    :cond_43
    const/4 v5, 0x0

    move v3, v5

    goto :goto_e

    .line 478
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v2       #heapFile:Ljava/lang/String;
    .restart local v3       #managed:Z
    .restart local v4       #process:Ljava/lang/String;
    :catch_46
    move-exception v5

    move-object v0, v5

    .line 479
    .local v0, e:Ljava/io/FileNotFoundException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: Unable to open file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 486
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_60
    return-void
.end method

.method private runInstrument()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 377
    const/4 v2, 0x0

    .line 378
    .local v2, profileFile:Ljava/lang/String;
    const/4 v13, 0x0

    .line 379
    .local v13, wait:Z
    const/4 v12, 0x0

    .line 380
    .local v12, rawMode:Z
    const/4 v9, 0x0

    .line 381
    .local v9, no_window_animation:Z
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 382
    .local v4, args:Landroid/os/Bundle;
    const/4 v6, 0x0

    .local v6, argKey:Ljava/lang/String;
    const/4 v7, 0x0

    .line 383
    .local v7, argValue:Ljava/lang/String;
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v14

    .line 386
    .local v14, wm:Landroid/view/IWindowManager;
    :goto_15
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    move-result-object v11

    .local v11, opt:Ljava/lang/String;
    if-eqz v11, :cond_76

    .line 387
    const-string v0, "-p"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 388
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    goto :goto_15

    .line 389
    :cond_28
    const-string v0, "-w"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 390
    const/4 v13, 0x1

    goto :goto_15

    .line 391
    :cond_32
    const-string v0, "-r"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 392
    const/4 v12, 0x1

    goto :goto_15

    .line 393
    :cond_3c
    const-string v0, "-e"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 394
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 395
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 396
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 397
    :cond_50
    const-string v0, "--no_window_animation"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 398
    const/4 v9, 0x1

    goto :goto_15

    .line 400
    :cond_5a
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    .end local v2           #profileFile:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 401
    invoke-static {}, Lcom/android/commands/am/Am;->showUsage()V

    .line 435
    :cond_75
    :goto_75
    return-void

    .line 406
    .restart local v2       #profileFile:Ljava/lang/String;
    :cond_76
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 407
    .local v8, cnArg:Ljava/lang/String;
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 408
    .local v1, cn:Landroid/content/ComponentName;
    if-nez v1, :cond_99

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #cn:Landroid/content/ComponentName;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad component name: "

    .end local v2           #profileFile:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    .restart local v1       #cn:Landroid/content/ComponentName;
    .restart local v2       #profileFile:Ljava/lang/String;
    :cond_99
    const/4 v5, 0x0

    .line 411
    .local v5, watcher:Lcom/android/commands/am/Am$InstrumentationWatcher;
    if-eqz v13, :cond_a5

    .line 412
    new-instance v5, Lcom/android/commands/am/Am$InstrumentationWatcher;

    .end local v5           #watcher:Lcom/android/commands/am/Am$InstrumentationWatcher;
    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/android/commands/am/Am$InstrumentationWatcher;-><init>(Lcom/android/commands/am/Am;Lcom/android/commands/am/Am$1;)V

    .line 413
    .restart local v5       #watcher:Lcom/android/commands/am/Am$InstrumentationWatcher;
    invoke-virtual {v5, v12}, Lcom/android/commands/am/Am$InstrumentationWatcher;->setRawOutput(Z)V

    .line 415
    :cond_a5
    const/4 v10, 0x0

    .line 416
    .local v10, oldAnims:[F
    if-eqz v9, :cond_b6

    .line 417
    invoke-interface {v14}, Landroid/view/IWindowManager;->getAnimationScales()[F

    move-result-object v10

    .line 418
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-interface {v14, v0, v3}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 419
    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-interface {v14, v0, v3}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 422
    :cond_b6
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;)Z

    move-result v0

    if-nez v0, :cond_dc

    .line 423
    new-instance v0, Landroid/util/AndroidException;

    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #profileFile:Ljava/lang/String;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSTRUMENTATION_FAILED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .end local v1           #cn:Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    .restart local v1       #cn:Landroid/content/ComponentName;
    .restart local v2       #profileFile:Ljava/lang/String;
    :cond_dc
    if-eqz v5, :cond_eb

    .line 427
    invoke-virtual {v5}, Lcom/android/commands/am/Am$InstrumentationWatcher;->waitForFinish()Z

    move-result v0

    if-nez v0, :cond_eb

    .line 428
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "INSTRUMENTATION_ABORTED: System has crashed."

    .end local v1           #cn:Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 432
    :cond_eb
    if-eqz v10, :cond_75

    .line 433
    invoke-interface {v14, v10}, Landroid/view/IWindowManager;->setAnimationScales([F)V

    goto :goto_75
.end method

.method private runMonitor()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 770
    const/4 v1, 0x0

    .line 771
    .local v1, gdbPort:Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    move-result-object v2

    .local v2, opt:Ljava/lang/String;
    if-eqz v2, :cond_30

    .line 772
    const-string v3, "--gdb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 773
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 775
    :cond_14
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 776
    invoke-static {}, Lcom/android/commands/am/Am;->showUsage()V

    .line 783
    :goto_2f
    return-void

    .line 781
    :cond_30
    new-instance v0, Lcom/android/commands/am/Am$MyActivityController;

    invoke-direct {v0, p0, v1}, Lcom/android/commands/am/Am$MyActivityController;-><init>(Lcom/android/commands/am/Am;Ljava/lang/String;)V

    .line 782
    .local v0, controller:Lcom/android/commands/am/Am$MyActivityController;
    invoke-virtual {v0}, Lcom/android/commands/am/Am$MyActivityController;->run()V

    goto :goto_2f
.end method

.method private runProfile()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 438
    const/4 v4, 0x0

    .line 439
    .local v4, profileFile:Ljava/lang/String;
    const/4 v5, 0x0

    .line 440
    .local v5, start:Z
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 441
    .local v3, process:Ljava/lang/String;
    const/4 v2, 0x0

    .line 443
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, cmd:Ljava/lang/String;
    const-string v6, "start"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 445
    const/4 v5, 0x1

    .line 446
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 448
    :try_start_18
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x3c00

    invoke-static {v6, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_22} :catch_44

    move-result-object v2

    .line 461
    :cond_23
    iget-object v6, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v6, v3, v5, v4, v2}, Landroid/app/IActivityManager;->profileControl(Ljava/lang/String;ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v6

    if-nez v6, :cond_5e

    .line 462
    new-instance v6, Landroid/util/AndroidException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PROFILE FAILED on process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 453
    :catch_44
    move-exception v6

    move-object v1, v6

    .line 454
    .local v1, e:Ljava/io/FileNotFoundException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: Unable to open file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 464
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_5e
    return-void

    .line 457
    :cond_5f
    const-string v6, "stop"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23

    .line 458
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Profile command "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not valid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private runScreenCompat()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 786
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 788
    .local v1, mode:Ljava/lang/String;
    const-string v3, "on"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 789
    const/4 v0, 0x1

    .line 798
    .local v0, enabled:Z
    :goto_d
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 801
    .local v2, packageName:Ljava/lang/String;
    :cond_11
    :try_start_11
    iget-object v3, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    if-eqz v0, :cond_46

    const/4 v4, 0x1

    :goto_16
    invoke-interface {v3, v2, v4}, Landroid/app/IActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_19} :catch_48

    .line 806
    :goto_19
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArg()Ljava/lang/String;

    move-result-object v2

    .line 807
    if-nez v2, :cond_11

    .line 808
    .end local v0           #enabled:Z
    .end local v2           #packageName:Ljava/lang/String;
    :goto_1f
    return-void

    .line 790
    :cond_20
    const-string v3, "off"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 791
    const/4 v0, 0x0

    .restart local v0       #enabled:Z
    goto :goto_d

    .line 793
    .end local v0           #enabled:Z
    :cond_2a
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: enabled mode must be \'on\' or \'off\' at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 794
    invoke-static {}, Lcom/android/commands/am/Am;->showUsage()V

    goto :goto_1f

    .line 801
    .restart local v0       #enabled:Z
    .restart local v2       #packageName:Ljava/lang/String;
    :cond_46
    const/4 v4, 0x0

    goto :goto_16

    .line 804
    :catch_48
    move-exception v3

    goto :goto_19
.end method

.method private runStart()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/android/commands/am/Am;->makeIntent()Landroid/content/Intent;

    move-result-object v2

    .line 279
    .local v2, intent:Landroid/content/Intent;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 280
    const/high16 v0, 0x1000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 282
    const/4 v14, 0x0

    .line 284
    .local v14, result:Landroid/app/IActivityManager$WaitResult;
    iget-boolean v0, p0, Lcom/android/commands/am/Am;->mWaitOption:Z

    if-eqz v0, :cond_fb

    .line 285
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-boolean v10, p0, Lcom/android/commands/am/Am;->mDebugOption:Z

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivityAndWait(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZ)Landroid/app/IActivityManager$WaitResult;

    move-result-object v14

    .line 287
    iget v13, v14, Landroid/app/IActivityManager$WaitResult;->result:I

    .line 292
    .local v13, res:I
    :goto_3b
    iget-boolean v0, p0, Lcom/android/commands/am/Am;->mWaitOption:Z

    if-eqz v0, :cond_110

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v12, v0

    .line 293
    .local v12, out:Ljava/io/PrintStream;
    :goto_42
    const/4 v11, 0x0

    .line 294
    .local v11, launched:Z
    packed-switch v13, :pswitch_data_192

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Activity not started, unknown error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 349
    :goto_5c
    iget-boolean v0, p0, Lcom/android/commands/am/Am;->mWaitOption:Z

    if-eqz v0, :cond_fa

    if-eqz v11, :cond_fa

    .line 350
    if-nez v14, :cond_6f

    .line 351
    new-instance v14, Landroid/app/IActivityManager$WaitResult;

    .end local v14           #result:Landroid/app/IActivityManager$WaitResult;
    invoke-direct {v14}, Landroid/app/IActivityManager$WaitResult;-><init>()V

    .line 352
    .restart local v14       #result:Landroid/app/IActivityManager$WaitResult;
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v14, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 354
    :cond_6f
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status: "

    .end local v2           #intent:Landroid/content/Intent;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v14, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-eqz v2, :cond_18d

    const-string v2, "timeout"

    :goto_82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 355
    iget-object v0, v14, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v0, :cond_af

    .line 356
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v14, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 358
    :cond_af
    iget-wide v0, v14, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_d1

    .line 359
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThisTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v14, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 361
    :cond_d1
    iget-wide v0, v14, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_f3

    .line 362
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TotalTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v14, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 364
    :cond_f3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Complete"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 366
    :cond_fa
    return-void

    .line 289
    .end local v11           #launched:Z
    .end local v12           #out:Ljava/io/PrintStream;
    .end local v13           #res:I
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_fb
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-boolean v10, p0, Lcom/android/commands/am/Am;->mDebugOption:Z

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZ)I

    move-result v13

    .restart local v13       #res:I
    goto/16 :goto_3b

    .line 292
    :cond_110
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v12, v0

    goto/16 :goto_42

    .line 296
    .restart local v11       #launched:Z
    .restart local v12       #out:Ljava/io/PrintStream;
    :pswitch_115
    const/4 v11, 0x1

    .line 297
    goto/16 :goto_5c

    .line 299
    :pswitch_118
    const/4 v11, 0x1

    .line 300
    const-string v0, "Warning: Activity not started because the  current activity is being kept for the user."

    invoke-virtual {v12, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5c

    .line 305
    :pswitch_120
    const/4 v11, 0x1

    .line 306
    const-string v0, "Warning: Activity not started, intent has been delivered to currently running top-most instance."

    invoke-virtual {v12, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5c

    .line 312
    :pswitch_128
    const/4 v11, 0x1

    .line 313
    const-string v0, "Warning: Activity not started because intent should be handled by the caller"

    invoke-virtual {v12, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5c

    .line 318
    :pswitch_130
    const/4 v11, 0x1

    .line 319
    const-string v0, "Warning: Activity not started, its current task has been brought to the front"

    invoke-virtual {v12, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5c

    .line 324
    :pswitch_138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Activity not started, unable to resolve "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5c

    .line 329
    :pswitch_154
    const-string v0, "Error type 3"

    invoke-virtual {v12, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Activity class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not exist."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5c

    .line 335
    :pswitch_17f
    const-string v0, "Error: Activity not started, you requested to both forward and receive its result"

    invoke-virtual {v12, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5c

    .line 340
    :pswitch_186
    const-string v0, "Error: Activity not started, you do not have permission to access it."

    invoke-virtual {v12, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5c

    .line 354
    .end local v2           #intent:Landroid/content/Intent;
    :cond_18d
    const-string v2, "ok"

    goto/16 :goto_82

    .line 294
    nop

    :pswitch_data_192
    .packed-switch -0x4
        :pswitch_186
        :pswitch_17f
        :pswitch_154
        :pswitch_138
        :pswitch_115
        :pswitch_128
        :pswitch_130
        :pswitch_120
        :pswitch_118
    .end packed-switch
.end method

.method private runStartService()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/android/commands/am/Am;->makeIntent()Landroid/content/Intent;

    move-result-object v1

    .line 270
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 271
    iget-object v2, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 272
    .local v0, cn:Landroid/content/ComponentName;
    if-nez v0, :cond_30

    .line 273
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Not found; no service started."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 275
    :cond_30
    return-void
.end method

.method private sendBroadcast()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 369
    invoke-direct {p0}, Lcom/android/commands/am/Am;->makeIntent()Landroid/content/Intent;

    move-result-object v2

    .line 370
    .local v2, intent:Landroid/content/Intent;
    new-instance v4, Lcom/android/commands/am/Am$IntentReceiver;

    invoke-direct {v4, p0, v1}, Lcom/android/commands/am/Am$IntentReceiver;-><init>(Lcom/android/commands/am/Am;Lcom/android/commands/am/Am$1;)V

    .line 371
    .local v4, receiver:Lcom/android/commands/am/Am$IntentReceiver;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Broadcasting: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v9, 0x1

    move-object v3, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move v10, v5

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I

    .line 373
    invoke-virtual {v4}, Lcom/android/commands/am/Am$IntentReceiver;->waitForFinish()V

    .line 374
    return-void
.end method

.method private static showUsage()V
    .registers 2

    .prologue
    .line 1007
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage: am [subcommand] [options]\n\n    start an Activity: am start [-D] [-W] <INTENT>\n        -D: enable debugging\n        -W: wait for launch to complete\n\n    start a Service: am startservice <INTENT>\n\n    send a broadcast Intent: am broadcast <INTENT>\n\n    start an Instrumentation: am instrument [flags] <COMPONENT>\n        -r: print raw results (otherwise decode REPORT_KEY_STREAMRESULT)\n        -e <NAME> <VALUE>: set argument <NAME> to <VALUE>\n        -p <FILE>: write profiling data to <FILE>\n        -w: wait for instrumentation to finish before returning\n\n    run a test package against an application: am instrument [flags] <TEST_PACKAGE>/<RUNNER_CLASS>\n        -e <testrunner_flag> <testrunner_value> [,<testrunner_value>]\n        -w wait for the test to finish (required)\n        -r use with -e perf true to generate raw output for performance measurements\n\n    start profiling: am profile <PROCESS> start <FILE>\n    stop profiling: am profile <PROCESS> stop\n    dump heap: am dumpheap [flags] <PROCESS> <FILE>\n        -n: dump native heap instead of managed heap\n\n    start monitoring: am monitor [--gdb <port>]\n        --gdb: start gdbserv on the given port at crash/ANR\n\n    control screen compatibility: am screen-compat [on|off] [package]\n\n    override display size: am display-size [reset|MxN]\n\n    <INTENT> specifications include these flags:\n        [-a <ACTION>] [-d <DATA_URI>] [-t <MIME_TYPE>]\n        [-c <CATEGORY> [-c <CATEGORY>] ...]\n        [-e|--es <EXTRA_KEY> <EXTRA_STRING_VALUE> ...]\n        [--esn <EXTRA_KEY> ...]\n        [--ez <EXTRA_KEY> <EXTRA_BOOLEAN_VALUE> ...]\n        [--ei <EXTRA_KEY> <EXTRA_INT_VALUE> ...]\n        [--el <EXTRA_KEY> <EXTRA_LONG_VALUE> ...]\n        [--eia <EXTRA_KEY> <EXTRA_INT_VALUE>[,<EXTRA_INT_VALUE...]]\n        [--ela <EXTRA_KEY> <EXTRA_LONG_VALUE>[,<EXTRA_LONG_VALUE...]]\n        [-n <COMPONENT>] [-f <FLAGS>]\n        [--grant-read-uri-permission] [--grant-write-uri-permission]\n        [--debug-log-resolution]\n        [--activity-brought-to-front] [--activity-clear-top]\n        [--activity-clear-when-task-reset] [--activity-exclude-from-recents]\n        [--activity-launched-from-history] [--activity-multiple-task]\n        [--activity-no-animation] [--activity-no-history]\n        [--activity-no-user-action] [--activity-previous-is-top]\n        [--activity-reorder-to-front] [--activity-reset-task-if-needed]\n        [--activity-single-top]\n        [--receiver-registered-only] [--receiver-replace-pending]\n        [<URI>]\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1064
    return-void
.end method
