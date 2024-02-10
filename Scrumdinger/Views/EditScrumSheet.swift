//
//  EditScrumSheet.swift
//  Scrumdinger
//
//  Created by david chinchin on 9/2/24.
//

import SwiftUI

struct EditScrumSheet: View {
    @Binding var scrum: DailyScrum
    @Binding var isPresentingEditView: Bool
    
    var body: some View {
        NavigationStack {
            DetailEditView(scrum: $scrum)
                .navigationTitle(scrum.title)
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Cancel") {
                            isPresentingEditView = false
                        }
                    }
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Done") {
                            isPresentingEditView = false
                        }
                    }
                }
        }
    }
}

struct EditScrumSheet_Previews: PreviewProvider {
    static var previews: some View {
        EditScrumSheet(scrum: .constant(DailyScrum.sampleData[0]), isPresentingEditView: .constant(false))
    }
}
