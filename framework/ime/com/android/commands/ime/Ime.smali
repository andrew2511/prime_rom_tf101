.class public final Lcom/android/commands/ime/Ime;
.super Ljava/lang/Object;
.source "Ime.java"


# static fields
.field private static final IMM_NOT_RUNNING_ERR:Ljava/lang/String; = "Error: Could not access the Input Method Manager.  Is the system running?"


# instance fields
.field private mArgs:[Ljava/lang/String;

.field private mCurArgData:Ljava/lang/String;

.field mImm:Lcom/android/internal/view/IInputMethodManager;

.field private mNextArg:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .parameter "args"

    .prologue
    .line 40
    new-instance v0, Lcom/android/commands/ime/Ime;

    invoke-direct {v0}, Lcom/android/commands/ime/Ime;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/commands/ime/Ime;->run([Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private nextArg()Ljava/lang/String;
    .registers 4

    .prologue
    .line 224
    iget v1, p0, Lcom/android/commands/ime/Ime;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/ime/Ime;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_9

    .line 225
    const/4 v1, 0x0

    .line 229
    :goto_8
    return-object v1

    .line 227
    :cond_9
    iget-object v1, p0, Lcom/android/commands/ime/Ime;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/ime/Ime;->mNextArg:I

    aget-object v0, v1, v2

    .line 228
    .local v0, arg:Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/ime/Ime;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/ime/Ime;->mNextArg:I

    move-object v1, v0

    .line 229
    goto :goto_8
.end method

.method private nextOption()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 187
    iget v1, p0, Lcom/android/commands/ime/Ime;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/ime/Ime;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_c

    move-object v1, v3

    .line 208
    :goto_b
    return-object v1

    .line 190
    :cond_c
    iget-object v1, p0, Lcom/android/commands/ime/Ime;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/ime/Ime;->mNextArg:I

    aget-object v0, v1, v2

    .line 191
    .local v0, arg:Ljava/lang/String;
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    move-object v1, v3

    .line 192
    goto :goto_b

    .line 194
    :cond_1c
    iget v1, p0, Lcom/android/commands/ime/Ime;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/ime/Ime;->mNextArg:I

    .line 195
    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    move-object v1, v3

    .line 196
    goto :goto_b

    .line 198
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_50

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_50

    .line 199
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_4c

    .line 200
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/ime/Ime;->mCurArgData:Ljava/lang/String;

    .line 201
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 203
    :cond_4c
    iput-object v3, p0, Lcom/android/commands/ime/Ime;->mCurArgData:Ljava/lang/String;

    move-object v1, v0

    .line 204
    goto :goto_b

    .line 207
    :cond_50
    iput-object v3, p0, Lcom/android/commands/ime/Ime;->mCurArgData:Ljava/lang/String;

    move-object v1, v0

    .line 208
    goto :goto_b
.end method

.method private nextOptionData()Ljava/lang/String;
    .registers 4

    .prologue
    .line 212
    iget-object v1, p0, Lcom/android/commands/ime/Ime;->mCurArgData:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 213
    iget-object v1, p0, Lcom/android/commands/ime/Ime;->mCurArgData:Ljava/lang/String;

    .line 220
    :goto_6
    return-object v1

    .line 215
    :cond_7
    iget v1, p0, Lcom/android/commands/ime/Ime;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/ime/Ime;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_10

    .line 216
    const/4 v1, 0x0

    goto :goto_6

    .line 218
    :cond_10
    iget-object v1, p0, Lcom/android/commands/ime/Ime;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/ime/Ime;->mNextArg:I

    aget-object v0, v1, v2

    .line 219
    .local v0, data:Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/ime/Ime;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/ime/Ime;->mNextArg:I

    move-object v1, v0

    .line 220
    goto :goto_6
.end method

.method private runList()V
    .registers 12

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, all:Z
    const/4 v1, 0x0

    .line 92
    .local v1, brief:Z
    :goto_2
    invoke-direct {p0}, Lcom/android/commands/ime/Ime;->nextOption()Ljava/lang/String;

    move-result-object v6

    .local v6, opt:Ljava/lang/String;
    if-eqz v6, :cond_38

    .line 93
    const-string v8, "-a"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 94
    const/4 v0, 0x1

    goto :goto_2

    .line 95
    :cond_12
    const-string v8, "-s"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 96
    const/4 v1, 0x1

    goto :goto_2

    .line 98
    :cond_1c
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: Unknown option: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/android/commands/ime/Ime;->showUsage()V

    .line 136
    :cond_37
    :goto_37
    return-void

    .line 106
    :cond_38
    if-nez v0, :cond_77

    .line 108
    :try_start_3a
    iget-object v8, p0, Lcom/android/commands/ime/Ime;->mImm:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v8}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodList()Ljava/util/List;
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3f} :catch_64

    move-result-object v5

    .line 124
    .local v5, methods:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :goto_40
    if-eqz v5, :cond_37

    .line 125
    new-instance v7, Landroid/util/PrintStreamPrinter;

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v7, v8}, Landroid/util/PrintStreamPrinter;-><init>(Ljava/io/PrintStream;)V

    .line 126
    .local v7, pr:Landroid/util/Printer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_4a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_37

    .line 127
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 128
    .local v4, imi:Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v1, :cond_91

    .line 129
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    :goto_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 109
    .end local v3           #i:I
    .end local v4           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v5           #methods:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v7           #pr:Landroid/util/Printer;
    :catch_64
    move-exception v8

    move-object v2, v8

    .line 110
    .local v2, e:Landroid/os/RemoteException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "Error: Could not access the Input Method Manager.  Is the system running?"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_37

    .line 116
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_77
    :try_start_77
    iget-object v8, p0, Lcom/android/commands/ime/Ime;->mImm:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v8}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodList()Ljava/util/List;
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_7c} :catch_7e

    move-result-object v5

    .restart local v5       #methods:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    goto :goto_40

    .line 117
    .end local v5           #methods:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :catch_7e
    move-exception v8

    move-object v2, v8

    .line 118
    .restart local v2       #e:Landroid/os/RemoteException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "Error: Could not access the Input Method Manager.  Is the system running?"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_37

    .line 131
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v3       #i:I
    .restart local v4       #imi:Landroid/view/inputmethod/InputMethodInfo;
    .restart local v5       #methods:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v7       #pr:Landroid/util/Printer;
    :cond_91
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    const-string v8, "  "

    invoke-virtual {v4, v7, v8}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_61
.end method

.method private runSet()V
    .registers 6

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/commands/ime/Ime;->nextArg()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, id:Ljava/lang/String;
    if-nez v1, :cond_11

    .line 168
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: no input method ID specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/android/commands/ime/Ime;->showUsage()V

    .line 184
    :goto_10
    return-void

    .line 174
    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/android/commands/ime/Ime;->mImm:Lcom/android/internal/view/IInputMethodManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Lcom/android/internal/view/IInputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 175
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " selected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_35} :catch_36
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_35} :catch_55

    goto :goto_10

    .line 176
    :catch_36
    move-exception v2

    move-object v0, v2

    .line 177
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_10

    .line 179
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_55
    move-exception v2

    move-object v0, v2

    .line 180
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Could not access the Input Method Manager.  Is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_10
.end method

.method private runSetEnabled(Z)V
    .registers 8
    .parameter "state"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/commands/ime/Ime;->nextArg()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, id:Ljava/lang/String;
    if-nez v1, :cond_11

    .line 141
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: no input method ID specified"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/android/commands/ime/Ime;->showUsage()V

    .line 163
    :goto_10
    return-void

    .line 147
    :cond_11
    :try_start_11
    iget-object v3, p0, Lcom/android/commands/ime/Ime;->mImm:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v3, v1, p1}, Lcom/android/internal/view/IInputMethodManager;->setInputMethodEnabled(Ljava/lang/String;Z)Z

    move-result v2

    .line 148
    .local v2, res:Z
    if-eqz p1, :cond_62

    .line 149
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Input method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_5f

    const-string v5, "already enabled"

    :goto_34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_3f} :catch_40
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_3f} :catch_89

    goto :goto_10

    .line 155
    .end local v2           #res:Z
    :catch_40
    move-exception v3

    move-object v0, v3

    .line 156
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_10

    .line 149
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v2       #res:Z
    :cond_5f
    :try_start_5f
    const-string v5, "now enabled"

    goto :goto_34

    .line 152
    :cond_62
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Input method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_9d

    const-string v5, "now disabled"

    :goto_7d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_88
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5f .. :try_end_88} :catch_40
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_88} :catch_89

    goto :goto_10

    .line 158
    .end local v2           #res:Z
    :catch_89
    move-exception v3

    move-object v0, v3

    .line 159
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 160
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the Input Method Manager.  Is the system running?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 152
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v2       #res:Z
    :cond_9d
    :try_start_9d
    const-string v5, "already disabled"
    :try_end_9f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9d .. :try_end_9f} :catch_40
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_9f} :catch_89

    goto :goto_7d
.end method

.method private static showUsage()V
    .registers 2

    .prologue
    .line 233
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage: ime list [-a] [-s]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 234
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       ime enable ID"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 235
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       ime disable ID"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 236
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       ime set ID"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 237
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 238
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The list command prints all enabled input methods.  Use"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 239
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "the -a option to see all input methods.  Use"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "the -s option to see only a single summary line of each."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 241
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The enable command allows the given input method ID to be used."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 244
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The disable command disallows the given input method ID from use."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 245
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 246
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The set command switches to the given input method ID."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    return-void
.end method


# virtual methods
.method public run([Ljava/lang/String;)V
    .registers 6
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 44
    array-length v1, p1

    if-ge v1, v2, :cond_9

    .line 45
    invoke-static {}, Lcom/android/commands/ime/Ime;->showUsage()V

    .line 83
    :goto_8
    return-void

    .line 49
    :cond_9
    const-string v1, "input_method"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/ime/Ime;->mImm:Lcom/android/internal/view/IInputMethodManager;

    .line 50
    iget-object v1, p0, Lcom/android/commands/ime/Ime;->mImm:Lcom/android/internal/view/IInputMethodManager;

    if-nez v1, :cond_21

    .line 51
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error: Could not access the Input Method Manager.  Is the system running?"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 55
    :cond_21
    iput-object p1, p0, Lcom/android/commands/ime/Ime;->mArgs:[Ljava/lang/String;

    .line 56
    aget-object v0, p1, v3

    .line 57
    .local v0, op:Ljava/lang/String;
    iput v2, p0, Lcom/android/commands/ime/Ime;->mNextArg:I

    .line 59
    const-string v1, "list"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 60
    invoke-direct {p0}, Lcom/android/commands/ime/Ime;->runList()V

    goto :goto_8

    .line 64
    :cond_33
    const-string v1, "enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 65
    invoke-direct {p0, v2}, Lcom/android/commands/ime/Ime;->runSetEnabled(Z)V

    goto :goto_8

    .line 69
    :cond_3f
    const-string v1, "disable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 70
    invoke-direct {p0, v3}, Lcom/android/commands/ime/Ime;->runSetEnabled(Z)V

    goto :goto_8

    .line 74
    :cond_4b
    const-string v1, "set"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 75
    invoke-direct {p0}, Lcom/android/commands/ime/Ime;->runSet()V

    goto :goto_8

    .line 79
    :cond_57
    if-eqz v0, :cond_77

    .line 80
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unknown command \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    :cond_77
    invoke-static {}, Lcom/android/commands/ime/Ime;->showUsage()V

    goto :goto_8
.end method
