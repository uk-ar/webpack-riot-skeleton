<todo>

  <h3>{ opts.title }</h3>

  <ul>
    <li each={ items.filter(filter) }>
      <label class={ completed: done }>
        <input type="checkbox" checked={ done } onclick={ parent.toggle }>
           <raw content={parent.filter2(title)}/>
      </label>
    </li>
  </ul>

  <form onsubmit={ add }>
    <input name="input" onkeyup={ edit }>
    <button disabled={ !text }>Add #{ items.filter(filter).length + 1 }</button>
  </form>

  this.items = opts.items

  edit(e) {
    this.text = e.target.value
  }

  filter2(title) {
    return emoji(title,'http://localhost:8080')
  }

  add(e) {
    if (this.text) {
      this.items.push({ title: this.text })
      this.text = this.input.value = ''
    }
  }

  // an example how to filter items on the list
  filter(item) {
    return !item.hidden
  }

  toggle(e) {
    var item = e.item
    item.done = !item.done
    return true
  }

</todo>